//
//  MSGHealth.m
//  PirateGame
//
//  Created by Sunny on 13/07/2014.
//  Copyright (c) 2014 Sunny. All rights reserved.
//

#import "MSGHealth.h"

@implementation MSGHealth

-(int)changeHealthScore:(int)healthChange
{
    
    int newHealthScore = self.healthScore + healthChange;
    
    return newHealthScore;
    
}

@end
