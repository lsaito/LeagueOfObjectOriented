//
//  Axe.m
//  LeagueOrientedObjectiveC
//
//  Created by RAFAEL MORIS on 11/21/13.
//  Copyright (c) 2013 RAFAEL MORIS. All rights reserved.
//


#import "Axe.h"

@implementation Axe

- (double) calculateStrengthAttack : (Jogador *) character with: (Terreno *) terrain{
    double strengthAttack = [character forca];

    
    //comparacao de bonus
        if([terrain tipo] == 0){// floresta
            if([character isKindOfClass:[Humano class]]){
               strengthAttack += ([character forca] / 10) *100;
            }else if([character isKindOfClass:[Elfo class]]){
               strengthAttack += ([character forca] / 20) *100;
            }
        }else if([terrain tipo] == 1){ // caverna
           if([character isKindOfClass:[Anao class]]){
              strengthAttack += ([character forca] / 20) *100;
           }else if([character isKindOfClass:[Orc class]]){
              strengthAttack += ([character forca] / 10) *100;
            }
        }else if([terrain tipo] == 2){ //planicie
             if([character isKindOfClass:[Humano class]] || [character isKindOfClass:[Orc class]]){
                 strengthAttack += ([character forca] / 10) *100;
             }
        }else if([terrain tipo] == 3){ // castelo
             if([character isKindOfClass:[Humano class]]){
                 strengthAttack += ([character forca] / 20) *100;
            }else if([character isKindOfClass:[Elfo class]]){
                     strengthAttack += ([character forca] / 10) *100;
            }else if([character isKindOfClass:[Anao class]]){
                 strengthAttack += ([character forca] / 5) *100;
              }
        
        }else if([terrain tipo] == 4){// pantano
        
            if([character isKindOfClass:[Orc class]]){
                strengthAttack += ([character forca] / 20) *100;
            }
        }
    
    
    
    if([character isKindOfClass:[Anao class]]){
        strengthAttack += ([character forca] / 10) *100;
    }
    
    
    
    strengthAttack += (int)(arc4random() % [self powerAttack]);
    
    return strengthAttack;
    
}



@end