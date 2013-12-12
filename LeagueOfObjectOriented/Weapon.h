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
@interface Weapon : NSObject{
    NSString *name;
    double price;
    int element;
    int powerAttack;
    int precisionAttack;
    int wear;
    int reach;
    int level;
    BOOL usable;
}

#pragma mark - Métodos Estáticos

+(int) FIRE;
+(int) WATER;
+(int) LAND;
+(int) AIR;

#pragma mark - Construtores

- (id) initWithName : (NSString *)_name price : (double)_price element : (int)_element powerAttack : (int)_powerAttack precisionAttack : (int)_precisionAttack wear : (int)_wear reach : (int)_reach level : (int)_level;

#pragma mark - Métodos

- (double) calculateStrengthAttack : (Jogador *) character;
- (BOOL) verifyBreaking;

#pragma mark - Getter e Setter

@property NSString *name;
@property double attack;

@end
