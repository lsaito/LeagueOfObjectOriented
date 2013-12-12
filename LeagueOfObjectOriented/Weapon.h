//
//  Weapon.h
//  LeagueOrientedObjectiveC
//
//  Created by RAFAEL MORIS on 11/21/13.
//  Copyright (c) 2013 RAFAEL MORIS. All rights reserved.
//

#import <foundation/Foundation.h>
#import "Jogador.h"
#import "Terreno.h"
@class Jogador;
@interface Weapon : NSObject

- (id) initWithName : (NSString *)__name andAttack:(double)__attack;


- (double) calculateStrengthAttack : (Jogador *) character;


@property NSString *name;
@property double attack;

@end
