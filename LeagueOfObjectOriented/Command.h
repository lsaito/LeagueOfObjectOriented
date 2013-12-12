//
//  Command.h
//  LeagueOfObjectOriented
//
//  Created by LUCAS EIJI on 12/12/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Jogador;
@class CommandAttack;
@interface Command : NSObject {
   
}
@property (nonatomic,strong)NSMutableArray *historico;
+(Command *)sharedCommand ;
-(void)adicionarAtaque:(CommandAttack *)at;
@end
