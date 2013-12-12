//
//  Axe.h
//  LeagueOrientedObjectiveC
//
//  Created by RAFAEL MORIS on 11/21/13.
//  Copyright (c) 2013 RAFAEL MORIS. All rights reserved.
//

#import "Weapon.h"
#import "Orc.h"
#import "Humano.h"
#import "Elfo.h"
#import "Anao.h"
@interface Axe : Weapon

- (double) calculateStrengthAttack : (Jogador *) character with: (Terreno *) terreno;

@end
