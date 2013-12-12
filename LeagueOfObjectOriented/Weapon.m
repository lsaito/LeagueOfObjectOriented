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



- (id) initWithName : (NSString *)__name andAttack:(double)__attack{
    self = [super init];
    if(self){
        [self setName : __name];
        [self setAttack:__attack];

    }
    return self;
}

- (double) calculateStrengthAttack : (Jogador *) character{
    return 10.0;
}


@end
