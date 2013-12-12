//
//  Espada.m
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import "Espada.h"

@implementation Espada
-(double)calcularForcaDeAtaque:(Jogador *)jogador contagem:(int)cont{

int totalAtq = 200-(cont*2);

if(jogador.raca == 1){
    totalAtq += (forcaEsp);
}
else if (jogador.raca == 2){
    totalAtq = 10;
    totalAtq += (forcaEsp*0.1);
}
else if (jogador.raca == 3){
    totalAtq += (forcaEsp*0.1);
}
else if (jogador.raca == 4){
    totalAtq = 5;
    totalAtq += (forcaEsp);
}
totalAtq = totalAtq * precisaoDeAtq;
return totalAtq;
}
@end
