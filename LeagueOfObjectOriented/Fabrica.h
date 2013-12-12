
//
//  Fabrica.h
//  LeagueOfObjectOriented
//
//  Created by VICTOR LUNI on 12/12/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h"
@interface Fabrica : NSObject
-(Weapon *)retornarArma: (NSString *)_name price : (double)_price element : (int)_element powerAttack : (int)_powerAttack precisionAttack : (int)_precisionAttack wear : (int)_wear reach : (int)_reach level : (int)_level;






















@end
