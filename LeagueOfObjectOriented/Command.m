//
//  Command.m
//  LeagueOfObjectOriented
//
//  Created by LUCAS EIJI on 12/12/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "Command.h"
#import "Jogador.h"
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
-(void) adicionarAtaque:(Jogador *)j andInimigo:(Jogador *)j2 {
    NSString *s = [NSString stringWithFormat:@"%@ atacou %@", j.nome, j2.nome];
    [self.historico addObject:s];
}
-(void)usarMetodo:(NSString *)s {
    
}
@end
