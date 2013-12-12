//
//  Jogador.h
//  League of oriented objective
//
//  Created by IGOR HENRIQUE on 11/19/13.
//  Copyright (c) 2013 IGOR HENRIQUE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h"
#import "Command.h"

@class Weapon;


@interface Jogador : NSObject
@property (nonatomic,strong) NSString *nome;
@property (nonatomic) Weapon *primario;
@property (nonatomic) Weapon *secondario;
@property (nonatomic) int level;
@property (nonatomic) int hp;
@property (nonatomic) int forca;
@property (nonatomic) int destreza;
@property (nonatomic) int inteligencia;
@property (nonatomic) double dinheiro;
@property (nonatomic) int defesa;
@property (nonatomic) int exp;
@property (nonatomic) int expMax;

-(void)atacar:(Jogador *)inimigo;
-(void)defender;
-(void)recuperar;
-(id)initWithNome:(NSString *)__nome;

typedef enum:int{
    Forca=0,
    Destreza=1,
    Inteligencia=2,
    Hp=3
}Opcao ;
@end
