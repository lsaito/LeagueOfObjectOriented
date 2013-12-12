
//
//  Terreno.m
//  League of oriented objective
//
//  Created by IGOR HENRIQUE on 11/21/13.
//  Copyright (c) 2013 IGOR HENRIQUE. All rights reserved.
//

#import "Terreno.h"

@implementation Terreno
static const int FOREST = 0;
static const int CAVE = 1;
static const int PLAIN = 2;
static const int CASTLE = 3;
static const int SWAMP = 4;

-(id) initWithType:(int)type {
    if (self = [super init]) {
        self.tipo = type < 0 || type > 4? 0 : type;
    }return self;
}
@end
