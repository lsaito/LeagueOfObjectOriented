//
//  ArcoFlecha.m
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import "ArcoFlecha.h"


@implementation ArcoFlecha

-(double)calcularForcaDeAtaque:(Jogador *)jogador contagem:(int)cont{
    int totalAtq = 200 - cont;
    
    if(jogador.raca == 1){
       totalAtq += (forcaArco*0.1);
    }
    else if (jogador.raca == 2){
        totalAtq = 10;
        totalAtq += (forcaArco);
    }
    else if (jogador.raca == 3){
        totalAtq += (forcaArco);
    }
    else if (jogador.raca == 4){
        totalAtq = 5;
        totalAtq += (forcaArco);
    }
    totalAtq = totalAtq * precisaoDeAtq;
    return totalAtq;
}
@end
