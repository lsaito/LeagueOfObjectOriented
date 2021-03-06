//
//  Jogo.m
//  League of oriented objective
//
//  Created by IGOR HENRIQUE on 11/21/13.
//  Copyright (c) 2013 IGOR HENRIQUE. All rights reserved.
//

#import "Jogo.h"

@implementation Jogo

+(Jogo *)sharedJogoWIthJogador:(Jogador *)j {
    static Jogo *jog = NULL;
    if (!jog) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            jog = [[Jogo alloc] initWithJogador:j];
        });
    }
    return jog;
}

-(id)initWithJogador:(Jogador *)__p1{
    self = [super init];
    
    if (self) {
        self.p1 = __p1;
        [self GeradorDeInimigos];
    }
    
    return self;
}

-(void)loopGame {
    int r = arc4random()%5;
    self.t = [[Terreno alloc]initWithType:r];
    
    int randomP1 = arc4random()%2;
    while (self.p1.hp > 0) {
        if (randomP1 == 0) {
            [self escolherFuncao:self.p1 andInimigo:self.Inimigo];
            randomP1++;
        } else {
            [self escolherFuncao:self.Inimigo andInimigo:self.p1];
            randomP1=0;
        }
        if(self.Inimigo.hp<0)
            [self GeradorDeInimigos];
        
    }
}

-(void)GeradorDeInimigos{
    int inimigoRandomico = arc4random()%5;
    NSString *s = @"";
    if(inimigoRandomico==0) s = @"Orc"; else if (inimigoRandomico == 1) s = @"Humano"; else if (inimigoRandomico == 2) s = @"Anao"; else s = @"Elfo";
    
    self.Inimigo = [[NSClassFromString(s) alloc]initWithNome:s];
        

}


-(void)escolherFuncao:(Jogador *)j1 andInimigo:(Jogador *)inimigo {
    NSLog(@"Minha Vida: %d e Inimigo:%d", j1.hp, inimigo.hp);
    NSLog(@"%@ - Escolha uma opção: \n 0 - Atacar \n 1 - Recuperar \n 2 - Trocar Arma \n 3 - Fugir" , j1.nome);
    Funcao op = 0;
    scanf("%d", &op);
    if (op == FuncaoAtacar) {
        [j1 atacar:inimigo];
    } else if (op == FuncaoRecuperar) {
        [j1 recuperar];
    } else if (op == FuncaoTrocarArma) {
        
    } else {
        int chance = arc4random()%4;
        if (chance == 0) {
            [self endGame];
        }
    }
    
}
-(void)endGame {
    NSLog(@"Game Over");
    self.p1.hp = -1;
}
@end
