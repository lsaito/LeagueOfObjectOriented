//
//  LeagueOfOrientedObject.m
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import "LeagueOfOrientedObject.h"

@implementation LeagueOfOrientedObject

-(void)jogar{
    int cont = 0;
    Jogador *play1 = [Jogador new];
    for (int i = 0; i < 1000; i++) {
     
        cont++;
        [play1 ataque: player1 contagem: cont];
    }
}

    
-(void)vencedor{
    if(player1.vida <= 0){
        NSLog(@"Player 2 é o vencedor!!" );
    }
    else if(player2.vida <= 0){
        NSLog(@"Player 1 é o vencedor!!");
        
    }
    }
        


@end
