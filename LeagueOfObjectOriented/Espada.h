//
//  Espada.h
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import "Arma.h"

@interface Espada : Arma{
    int desgaste;
    int forcaEsp;
}
-(double)calcularForcaDeAtaque:(Jogador *)jogador contagem:(int)cont;
@end
