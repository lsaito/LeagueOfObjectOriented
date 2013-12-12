//
//  Jogador.m
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import "Jogador.h"
#import "Espada.h"
#import "ArcoFlecha.h"
#import "Magia.h"
#import "Machado.h"
#import <stdlib.h>

@implementation Jogador

static const int elfo = 1;
static const int orc = 2;
static const int humano = 3;
static const int anao = 4;

@synthesize raca, vida;
float vida = 1000;
-(id)QuaisArm{
      int tipo = 0;
    do{ // escolhe qual o tipo da primeira arma
      
    NSLog(@"Escolha o tipo de arma primaria:");
    NSLog(@"1 - Arco Flecha");
    NSLog(@"2 - Espada");
    NSLog(@"3 - Machado");
    NSLog(@"4 - Magia");
        scanf("%d", &tipo);
    }while (tipo < 1 || tipo > 4);
    if (tipo == 1) {
        armaPrimaria = [ArcoFlecha new];
    }
    else if (tipo == 2){
        armaPrimaria = [Espada new];
    }
    else if (tipo == 3){
        armaPrimaria = [Machado new];
    }
    else {
        armaPrimaria = [Magia new];
    }
    do{ // escolhe qual tipo da segunda arma
        
        NSLog(@"Escolha o tipo de arma secundaria:");
        NSLog(@"1 - Arco Flecha");
        NSLog(@"2 - Espada");
        NSLog(@"3 - Machado");
        NSLog(@"4 - Magia");
        scanf("%d", &tipo);
    }while (tipo < 1 || tipo > 4);
    
    if (tipo == 1) {
        armaSecundaria = [ArcoFlecha new];
    }
    else if (tipo == 2){
        armaSecundaria = [Espada new];
    }
    else if (tipo == 3){
        armaSecundaria = [Machado new];
    }
    else {
        armaSecundaria = [Magia new];
    }
    
    if([super init]){
    return self;
    }
    return self;
}

-(id)Qualraca:(int) racam{ // escolhe raca
    
    switch (racam) {
        case 1: raca = elfo; break;
        case 2: raca = orc; break;
        case 3: raca = humano; break;
        case 4: raca = anao; break;
        default:
            NSLog(@"Numero de raca invalido");
            break;
    }
    
    if([super init]){
        return self;
    }
    
    return self;
}
-(int)defesa: (int)cont{ //calculo de defesa
    int defTot = 100 - cont;
    if(raca == 1){ // Elfos
        defTot += 10;
    }
    else if (raca == 2){ // Orcs
        defTot += 5;
    }
    else if (raca == 3 || raca == 4){ //Humanos e Magos
        defTot += 15;
    }
    return defTot;
    
}
-(float)ataque:(Jogador *)player contagem:(int)cont{
    int arma;
    int atak = 0;
    do{
    NSLog(@"Qual arma?: 1-Primaria 2- Secundaria");
        scanf("%d", &arma);
    }while ( arma < 1 || arma > 2);
    if(arma == 1){
        armaPrimaria.precisaoDeAtq = rand()%(40)+60;
        atak = [armaPrimaria calcularForcaDeAtaque:player contagem:cont];
        
    }
    else if (arma == 2){
        armaSecundaria.precisaoDeAtq = (rand()%(40)+60)*0.8 ;
        atak = [armaSecundaria calcularForcaDeAtaque:player contagem:cont];
        
    }
    
    return atak;
   
    
}

-(float)sofreAtaque: (Jogador *)jogador forcaAgora:(double)forca contagem:(int)cont{
    int defesa =[jogador defesa: cont];
    vida = vida - (forca - defesa);
    return vida;
}


@end
