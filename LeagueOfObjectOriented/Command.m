//
//  Command.m
//  LeagueOfObjectOriented
//
//  Created by LUCAS EIJI on 12/12/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "Command.h"
#import "Jogador.h"
#import "CommandAttack.h"
@implementation Command
-(id)init {
    if (self = [super init]) {
        
        self.historico = [[NSMutableArray alloc] init];
        NSLog(@"Init");
        
    } return self;
}

+(Command *)sharedCommand {
    static Command * c = nil;
    if (!c) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            c = [[Command alloc] init];
        });
    } return c;
}
-(void)adicionarAtaque:(CommandAttack *)at {
    [self.historico addObject:at];
}
-(void)usarMetodo:(NSString *)s {
    
}
@end
