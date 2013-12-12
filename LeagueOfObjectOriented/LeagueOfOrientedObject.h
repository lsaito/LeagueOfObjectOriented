//
//  LeagueOfOrientedObject.h
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"

@interface LeagueOfOrientedObject : Jogador {
    Jogador *player1;
    Jogador *player2;
    
}

-(void)jogar;

-(void)vencedor;
@end
