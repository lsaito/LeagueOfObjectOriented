//
//  Magia.m
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import "Magia.h"

@implementation Magia
-(double)calcularForcaDeAtaque:(Jogador *)jogador contagem:(int)cont{
    
    habilidade = 75 + (cont * 10) ;
    if(habilidade >= 350){
        habilidade = 350;
        return habilidade;
    }
    
    
    int totalAtq = 0;
    
    if(jogador.raca == 1){
        totalAtq += (habilidade*0.2);
    }
    else if (jogador.raca == 2){
        totalAtq = 10;
        totalAtq += (habilidade*0.2);
    }
    else if (jogador.raca == 3){
        totalAtq += (habilidade);
    }
    else if (jogador.raca == 4){
        totalAtq = 5;
        totalAtq += (habilidade);
    }
    totalAtq = totalAtq * precisaoDeAtq;
    return totalAtq;
}

@end
