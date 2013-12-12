//
//  Jogo.h
//  League of oriented objective
//
//  Created by IGOR ; on 11/21/13.
//  Copyright (c) 2013 IGOR HENRIQUE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"
#import "Terreno.h"
#import "Humano.h"
#import "Elfo.h"
#import "Orc.h"
#import "Anao.h"
#import "Command.h"

#import <objc/runtime.h>

@interface Jogo : NSObject

@property (nonatomic,strong) Jogador *p1;
@property (nonatomic,strong) Jogador *Inimigo;
@property (nonatomic,strong) Terreno *t;

-(id)initWithJogador:(Jogador *)__p1;
+(Jogo *)sharedJogo:(Jogador *)jog;

typedef enum :int {
    FuncaoAtacar = 0,
    FuncaoRecuperar = 1,
    FuncaoTrocarArma = 2,
    FuncaoFugir = 3
}Funcao;

-(void)GeradorDeInimigos;
-(void)loopGame;

@end
