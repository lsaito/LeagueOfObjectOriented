//
//  WeaponFactory.m
//  LeagueOfObjectOriented
//
//  Created by VICTOR LUNI on 12/12/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "WeaponFactory.h"
#import "Weapon.h"


@implementation WeaponFactory
+(Weapon *)criarArmaWithTipo:(NSString *)tipo {
    if ([tipo isEqualToString:@"Bow"]) {
        Weapon *w = [[NSClassFromString(tipo) alloc] init];
        w.attack = 14;
        w.name = @"Bow Real";
         return w;
    } else if ([tipo isEqualToString:@"Axe"]) {
        Weapon *w = [[NSClassFromString(tipo) alloc] init];
        w.attack = 90;
        w.name = @"Axe Real";
         return w;
    } else if ([tipo isEqualToString:@"Sword"]) {
        Weapon *w = [[NSClassFromString(tipo) alloc] init];
        w.attack = 26;
        w.name = @"Sword Real";
        return w;
    }
    return nil;
}
@end
