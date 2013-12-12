//
//  Escudo.h
//  League of oriented objective
//
//  Created by IGOR HENRIQUE on 11/21/13.
//  Copyright (c) 2013 IGOR HENRIQUE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Escudo : NSObject
@property (nonatomic,strong) NSString *nome;
@property (nonatomic) double preco;
@property (nonatomic) int poderDeDefesa;
@property (nonatomic) int desgaste;
@property (nonatomic) int level;
@property (nonatomic) BOOL usavel;
@end
