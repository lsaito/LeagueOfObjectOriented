//
//  WeaponFactory.m
//  LeagueOfObjectOriented
//
//  Created by VICTOR LUNI on 12/12/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "WeaponFactory.h"
#import "Weapon.h"
#import "Bow.h"
#import "Axe.h"

@implementation WeaponFactory
+(Weapon *)criarArmaWithTipo:(Class )__class  {
    return [[__class alloc] init];
}
@end
