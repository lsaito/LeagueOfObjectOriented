//
//  Arma.h
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Jogador.h"

@interface Arma : NSObject 
{
    
    float precisaoDeAtq;
}
@property float precisaoDeAtq;

-(double) calcularForcaDeAtaque: (Jogador *)jogador contagem:(int)cont;

@end
