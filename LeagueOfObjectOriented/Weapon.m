//
//  Weapon.m
//  LeagueOrientedObjectiveC
//
//  Created by RAFAEL MORIS on 11/21/13.
//  Copyright (c) 2013 RAFAEL MORIS. All rights reserved.
//

#import <time.h>
#import <stdlib.h>
#import "Weapon.h"
#import "Jogador.h"

@implementation Weapon

static const int FIRE = 0;
static const int WATER = 1;
static const int LAND = 2;
static const int AIR = 3;

#pragma mark - Métodos Estáticos

+(int) FIRE{
    return FIRE;
}
+(int) WATER{
    return WATER;
}
+(int) LAND{
    return LAND;
}
+(int) AIR{
    return AIR;
}

#pragma mark - Construtores

- (id) initWithName : (NSString *)_name price : (double)_price element : (int)_element powerAttack : (int)_powerAttack precisionAttack : (int)_precisionAttack wear : (int)_wear reach : (int)_reach level : (int)_level{
    
    self = [super init];
    if(self){
        [self setName : _name];
        [self setPrice : _price];
        [self setElement : _element];
        [self setPowerAttack : _powerAttack];
        [self setPrecisionAttack : _precisionAttack];
        [self setWear : _wear];
        [self setReach : _reach];
        [self setLevel : _level];
        [self setUsable : true];
    }
    return self;
}

#pragma mark - Métodos

- (BOOL) verifyBreaking{
    BOOL breaking;
    double chance = arc4random() % 101;
    if(chance <= [self wear]){
        breaking = true;
    }else{
        breaking = false;
    }
    return breaking;
}
- (double) calculateStrengthAttack : (Jogador *) character{
    return 0.0;
}
#pragma mark - Getter e Setter

@synthesize name;
@synthesize price;
@synthesize element;
@synthesize powerAttack;
@synthesize precisionAttack;
@synthesize wear;
@synthesize reach;
@synthesize level;
@synthesize usable;

@end
