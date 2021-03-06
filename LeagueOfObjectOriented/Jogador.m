//
//  Jogador.m
//  League of oriented objective
//
//  Created by IGOR HENRIQUE on 11/19/13.
//  Copyright (c) 2013 IGOR HENRIQUE. All rights reserved.
//

#import "Jogador.h"
#import "CommandAttack.h"
@implementation Jogador
-(id)initWithNome:(NSString *)__nome {
    if (self = [super init]) {
        self.exp = 0;
        self.nome = __nome;
        self.expMax = 100;
        self.level = 1;
        self.dinheiro = 0;
        self.hp = 100;
    }return self;
}
-(void)escolherArma {
    NSLog(@"Escolha sua arma: (Bow, Sword, Sorcery, Axe");
    char *tipoArma[50];
    int nChar;
    nChar = scanf("%50s", tipoArma);
    NSString *n = [[NSString alloc]initWithCString:(char *)tipoArma encoding:NSStringEncodingConversionAllowLossy];
    self.primario = [[NSClassFromString(n) alloc]init];
}
-(void)escolherSegundaArma {
    NSLog(@"Escolha sua arma: (Bow, Sword, Sorcery, Axe");
    char *tipoArma[50];
    int nChar;
    nChar = scanf("%50s", tipoArma);
    NSString *n = [[NSString alloc]initWithCString:(char *)tipoArma encoding:NSStringEncodingConversionAllowLossy];
    self.secondario = [[NSClassFromString(n) alloc]init];
}

-(void)atacar:(Jogador *)inimigo {
    CommandAttack *at = [[CommandAttack alloc] initJogador:self andInimigo:inimigo];
    [at addToCommand];
    
}
-(void)defender {
    
}
-(void)recuperar {
    self.hp += 15;
}

-(void)LevelUp{
    self.exp=0;
    self.expMax+=50;
    
    for(int i=3; i<0; i--){
        Opcao escolha;
        NSLog(@"Onde voce deseja coloca seu atributo bonus: \n(forca =0 , Destreza = 1 , Inteligencia = 2, Hp = 3) \n");
        scanf ("%d", &escolha);
        
        if(escolha == Forca )
            self.forca+=1;
        else if(escolha == Destreza)
            self.destreza+=1;
        else if(escolha == Inteligencia)
            self.inteligencia+=1;
        else
            self.hp+=10;
 }
}
@end
