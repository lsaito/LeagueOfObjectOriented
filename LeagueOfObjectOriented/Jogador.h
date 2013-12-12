//
//  Jogador.h
//  LeagueOfOrientedObject
//
//  Created by THALES AUGUSTO on 11/19/13.
//  Copyright (c) 2013 THALES AUGUSTO. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Arma;

@interface Jogador : NSObject{
    int elfo;
    int orc;
    int humano;
    int anao;
    NSString *nome;
    int raca;
    float vida;
    int forcaEscudo;
    Arma *armaPrimaria;
    Arma *armaSecundaria;
    
}
@property int raca;
@property float vida;
-(id)QuaisArm;
-(id)Qualraca : (int)racam;
-(float)ataque: (Jogador *)player contagem: (int)cont;
-(float)sofreAtaque: (Arma *)armaUsada forcaAgora:(double)forca contagem:(int)cont;
-(int)defesa: (int)cont;


@end
