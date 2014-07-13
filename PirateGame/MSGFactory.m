//
//  MSGFactory.m
//  PirateGame
//
//  Created by Sunny on 13/07/2014.
//  Copyright (c) 2014 Sunny. All rights reserved.
//

#import "MSGFactory.h"
#import "MSGTile.h"

@implementation MSGFactory

-(NSArray *)tiles
{
    
    MSGTile *tile1 = [[MSGTile alloc]init];
    MSGTile *tile2 = [[MSGTile alloc]init];
    MSGTile *tile3 = [[MSGTile alloc]init];
    MSGTile *tile4 = [[MSGTile alloc]init];
    MSGTile *tile5 = [[MSGTile alloc]init];
    MSGTile *tile6 = [[MSGTile alloc]init];
    MSGTile *tile7 = [[MSGTile alloc]init];
    MSGTile *tile8 = [[MSGTile alloc]init];
    MSGTile *tile9 = [[MSGTile alloc]init];
    MSGTile *tile10 = [[MSGTile alloc]init];
    MSGTile *tile11 = [[MSGTile alloc]init];
    MSGTile *tile12 = [[MSGTile alloc]init];
    
    tile1.story = @"The start of your adventure";
    tile1.backGroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    tile1.actionButtonName = @"Pick up Sword";
    tile1.position = CGPointMake(0, 0);
    
    tile2.story = @"The black smith offers to repair your sword";
    tile2.backGroundImage = [UIImage imageNamed:@"PirateBlackSmith.jpeg"];
    tile2.actionButtonName = @"Strenghten Sword";
    tile2.position = CGPointMake(0, 1);
    
    tile3.story = @"You're offered some new Armor";
    tile3.backGroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.actionButtonName = @"Collect Armor";
    tile3.position = CGPointMake(0, 2);
    
    tile4.story = @"Octopus Attack! Either attack or retreat";
    tile4.backGroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile4.actionButtonName = @"Attack Octopus";
    tile4.position = CGPointMake(1, 0);
    tile4.healthChange = -101;
    
    tile5.story = @"A parrot lands on your ship";
    tile5.backGroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    tile5.actionButtonName = @"Catch the parrot";
    tile5.position = CGPointMake(1, 1);
    
    tile6.story = @"story6";
    tile6.backGroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.actionButtonName = @"Walk the plank";
    tile6.position = CGPointMake(1, 2);
    
    tile7.story = @"story7";
    tile7.backGroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.actionButtonName = @"Order Attack on ship";
    tile7.position = CGPointMake(2, 0);
    
    tile8.story = @"story8";
    tile8.backGroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile8.actionButtonName = @"Collect treasure";
    tile8.position = CGPointMake(2, 1);
    
    tile9.story = @"story9";
    tile9.backGroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile9.actionButtonName = @"Collect treasure";
    tile9.position = CGPointMake(2, 2);
    
    tile10.story = @"story10";
    tile10.backGroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    tile10.actionButtonName = @"Collect Ultimate Sword";
    tile10.position = CGPointMake(3, 0);
    
    tile11.story = @"story11";
    tile11.backGroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile11.actionButtonName = @"Challenge Pirate";
    tile11.position = CGPointMake(3, 1);
    
    tile12.story = @"story12";
    tile12.backGroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.actionButtonName = @"Fight";
    tile12.position = CGPointMake(3, 2);
    
    NSArray *column1Array = [[NSArray alloc]initWithObjects:tile1, tile2, tile3, nil];
    NSArray *column2Array = [[NSArray alloc]initWithObjects:tile4, tile5, tile6, nil];
    NSArray *column3Array = [[NSArray alloc]initWithObjects:tile7, tile8, tile9, nil];
    NSArray *column4Array = [[NSArray alloc]initWithObjects:tile10, tile11, tile12, nil];
    
    NSArray *tilesArray = [[NSArray alloc]initWithObjects:column1Array, column2Array, column3Array, column4Array,nil];
    
    return tilesArray;
}

@end
