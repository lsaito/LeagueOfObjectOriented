//
//  WeaponFactory.h
//  LeagueOfObjectOriented
//
//  Created by VICTOR LUNI on 12/12/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Weapon;
@interface WeaponFactory : NSObject
+(Weapon *)criarArmaWithTipo:(NSString *)tipo;
@end
