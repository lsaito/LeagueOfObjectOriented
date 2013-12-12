//
//  Fabrica.m
//  LeagueOfObjectOriented
//
//  Created by VICTOR LUNI on 12/12/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "Fabrica.h"
#import "Weapon.h"
@implementation Fabrica

-(Weapon *)retornarArma:(NSString *)_name price:(double)_price element:(int)_element powerAttack:(int)_powerAttack precisionAttack:(int)_precisionAttack wear:(int)_wear reach:(int)_reach level:(int)_level{
    return [[Weapon alloc]initWithName:_name price:_price element:_element powerAttack:_powerAttack precisionAttack:_precisionAttack wear:_wear reach:_reach level:_level];
    
    
    
    
    
    
    
    
    
}
    

    
    
    
    















@end
