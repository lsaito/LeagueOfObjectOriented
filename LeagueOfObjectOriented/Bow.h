//
//  Bow.h
//  LeagueOrientedObjectiveC
//
//  Created by RAFAEL MORIS on 11/21/13.
//  Copyright (c) 2013 RAFAEL MORIS. All rights reserved.
//

#import "Weapon.h"

@interface Bow : Weapon

- (BOOL) verifyArrow;
//- (double) calculateStrengthAttack : (Character *) character;
- (double) calculateStrengthAttack : (Jogador *) character with: (Terreno *) terreno;


@end
