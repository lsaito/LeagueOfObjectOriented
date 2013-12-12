//
//  ArcoFlecha.h
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import "Arma.h"

@interface ArcoFlecha : Arma{
    int quantidadeFlechas;
    int forcaArco;
}

-(double)calcularForcaDeAtaque:(Jogador *)jogador contagem:(int)cont;
*

@end
