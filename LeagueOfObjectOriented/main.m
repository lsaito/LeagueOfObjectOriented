//
//  main.m
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
#import "Jogador.h"
#import "Jogo.h"
#import "Weapon.h"
#import "WeaponFactory.h"
#import "Bow.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Jogador *jogador = [[Jogador alloc] initWithNome:@"Raçudo"];
        Weapon *w = [WeaponFactory criarArmaWithTipo:@"Bow"];
        [jogador setPrimario:w];
        
        Jogo *j = [Jogo sharedJogoWIthJogador:jogador];
        [j loopGame];

    }
    return 0;
}

