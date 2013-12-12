//
//  main.m
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bow.h"
#import "Jogador.h"
#import "Jogo.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        Jogador *jogad = [[Jogador alloc] initWithNome:@"Raçudo"];
        Jogo *j = [Jogo sharedJogo:jogad];


    }
    return 0;
}

