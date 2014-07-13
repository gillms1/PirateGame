//
//  MSGHealth.h
//  PirateGame
//
//  Created by Sunny on 13/07/2014.
//  Copyright (c) 2014 Sunny. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSGHealth : NSObject

@property (nonatomic) int healthScore;

-(int)changeHealthScore:(int)healthChange;

@end
