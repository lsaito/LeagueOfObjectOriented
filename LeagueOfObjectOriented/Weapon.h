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

- (id) initWithName : (NSString *)_name andpowerAttack : (int)_powerAttack;

#pragma mark - Métodos

- (double) calculateStrengthAttack : (Jogador *) character;
- (BOOL) verifyBreaking;

#pragma mark - Getter e Setter

@property NSString *name;
@property double price;
@property int element;
@property int powerAttack;
@property int precisionAttack;
@property int wear;
@property int reach;
@property int level;
@property BOOL usable;

@end
