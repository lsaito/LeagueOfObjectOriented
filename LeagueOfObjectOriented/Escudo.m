//
//  Escudo.m
//  League of oriented objective
//
//  Created by IGOR HENRIQUE on 11/21/13.
//  Copyright (c) 2013 IGOR HENRIQUE. All rights reserved.
//

#import "Escudo.h"

@implementation Escudo
-(id)initWithNome:(NSString *)__nome {
    if (self = [super init]) {
        
        self.nome = __nome;
        
        self.poderDeDefesa = 0;
        self.desgaste = 0;
        self.usavel = YES;
        self.preco = 0;
        self.level = 1;
        
    } return self;
}

@end
