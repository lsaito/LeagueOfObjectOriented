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

-(Weapon *)retornarArma:(NSString *)_name powerAttack:(int)_powerAttack{
return [[Weapon alloc]initWithName:_name andpowerAttack:_powerAttack];
}

    
    
    
    
    
    

    

    
    
    
    















@end
