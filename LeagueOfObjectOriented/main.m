//
//  main.m
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogo.h"
#import "Jogador.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {

        Jogador *jogad = [[Jogador alloc] initWithNome:@"Raçudo"];
        [jogad escolherArma];
        Jogo *j = [Jogo sharedJogo:jogad];
        [j loopGame];




        
    }
    return 0;
}

