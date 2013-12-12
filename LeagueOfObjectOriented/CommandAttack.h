//
//  CommandAttack.h
//  LeagueOfObjectOriented
//
//  Created by VICTOR LUNI on 12/12/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Jogador;
@interface CommandAttack : NSObject

-(id)initJogador:(Jogador *)j andInimigo:(Jogador *)inimigo;
-(void)addToCommand;
@end
