//
//  CommandAttack.m
//  LeagueOfObjectOriented
//
//  Created by VICTOR LUNI on 12/12/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "CommandAttack.h"
#import "Jogador.h"
@implementation CommandAttack
-(id)initJogador:(Jogador *)j andInimigo:(Jogador *)inimigo{
    if (self = [super init]) {
        inimigo.hp -= j.primario.attack;
    } return self;
}
-(void)addToCommand {
    [[Command sharedCommand] adicionarAtaque:self];
}
@end
