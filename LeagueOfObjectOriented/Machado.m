//
//  Machado.m
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import "Machado.h"

@implementation Machado
-(double)calcularForcaDeAtaque:(Jogador *)jogador contagem:(int)cont{
        
        int totalAtq = 200-(cont*3);
        
        if(jogador.raca == 1){
            totalAtq += (forcaM);
        }
        else if (jogador.raca == 2){
            totalAtq = 10;
            totalAtq += (forcaM);
        }
        else if (jogador.raca == 3){
            totalAtq += (forcaM);
        }
        else if (jogador.raca == 4){
            totalAtq = 5;
            totalAtq += (forcaM*0.1);
        }
    totalAtq = totalAtq * precisaoDeAtq;
        return totalAtq;

   

}


@end
