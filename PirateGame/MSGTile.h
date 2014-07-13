//
//  MSGTile.h
//  PirateGame
//
//  Created by Sunny on 13/07/2014.
//  Copyright (c) 2014 Sunny. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MSGTile : NSObject

@property (strong, nonatomic) UIImage *backGroundImage;
@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) NSString *actionButtonName;
@property (nonatomic) CGPoint position;
@property (nonatomic) int healthChange;


@end
