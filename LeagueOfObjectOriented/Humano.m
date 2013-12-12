//
//  Humano.m
//  League of oriented objective
//
//  Created by IGOR HENRIQUE on 11/21/13.
//  Copyright (c) 2013 IGOR HENRIQUE. All rights reserved.
//

#import "Humano.h"

@implementation Humano
-(id)initWithNome:(NSString *)__nome {
    if (self = [super initWithNome:__nome]) {
        self.forca = 0;
        self.inteligencia = 0;
        self.destreza = 0;
        self.defesa = 15;
    }return self;
}
@end
