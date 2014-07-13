//
//  MSGViewController.m
//  PirateGame
//
//  Created by Sunny on 13/07/2014.
//  Copyright (c) 2014 Sunny. All rights reserved.
//

#import "MSGViewController.h"
#import "MSGFactory.h"
#import "MSGTile.h"


@interface MSGViewController ()

@property NSArray *tilesArray;

@end

@implementation MSGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.health = [[MSGHealth alloc]init];
    
    self.health.healthScore = 100;
    
    self.tilePoint = CGPointMake(0, 0);
    
    self.tilesArray = [[MSGFactory alloc]tiles];
    
    self.westButton.hidden = YES;
    self.southButton.hidden = YES;
    self.northButton.hidden = NO;
    self.eastButton.hidden = NO;
    
    NSArray *column1Array = [self.tilesArray objectAtIndex:0];
    
    MSGTile *tile1 = [column1Array objectAtIndex:0];
    
    self.storyText.text = tile1.story;
    self.backgroundImage.image = tile1.backGroundImage;
    [self.actionButton setTitle:tile1.actionButtonName forState:UIControlStateNormal];
    NSLog(@"%@", tile1.backGroundImage);
    
    self.healthScoreText.text = [NSString stringWithFormat:@"%i", self.health.healthScore];
    self.damageScoreText.text = @"0";
    self.weaponText.text = @"Fists";
    self.armorText.text = @"None";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(id)sender {
}


- (IBAction)eastButtonPressed:(UIButton *)sender {
    
    self.tilePoint = CGPointMake(self.tilePoint.x + 1, self.tilePoint.y);
    [self toggleButtons:self.tilePoint];
    
    NSArray *columnArray = [self.tilesArray objectAtIndex:self.tilePoint.y];
    MSGTile *tile = [columnArray objectAtIndex:self.tilePoint.x];
    
    [self toggleButtons:self.tilePoint];
    [self updateView:tile];
}

- (IBAction)northButtonPressed:(UIButton *)sender {
    
    self.tilePoint = CGPointMake(self.tilePoint.x, self.tilePoint.y + 1);
    
    NSArray *columnArray = [self.tilesArray objectAtIndex:self.tilePoint.y];
    MSGTile *tile = [columnArray objectAtIndex:self.tilePoint.x];
    
    [self toggleButtons:self.tilePoint];
    [self updateView:tile];
    
}

- (IBAction)southButtonPressed:(UIButton *)sender {
    
    self.tilePoint = CGPointMake(self.tilePoint.x, self.tilePoint.y - 1);
    [self toggleButtons:self.tilePoint];
    
    NSArray *columnArray = [self.tilesArray objectAtIndex:self.tilePoint.y];
    MSGTile *tile = [columnArray objectAtIndex:self.tilePoint.x];
    
    [self toggleButtons:self.tilePoint];
    [self updateView:tile];
}

- (IBAction)westButtonPressed:(UIButton *)sender {
    
    self.tilePoint = CGPointMake(self.tilePoint.x - 1, self.tilePoint.y);
    [self toggleButtons:self.tilePoint];
    
    NSArray *columnArray = [self.tilesArray objectAtIndex:self.tilePoint.y];
    MSGTile *tile = [columnArray objectAtIndex:self.tilePoint.x];
    
    [self toggleButtons:self.tilePoint];
    [self updateView:tile];
}

- (IBAction)resetButtonPressed:(UIButton *)sender {
    [self viewDidLoad];
}

- (void)updateView:(MSGTile *)tile
{
    self.storyText.text = tile.story;
    self.backgroundImage.image = tile.backGroundImage;
    [self.actionButton setTitle:tile.actionButtonName forState:UIControlStateNormal];
    
    int health = [self.health changeHealthScore:tile.healthChange];
    
    self.health.healthScore = health;
    self.healthScoreText.text = [NSString stringWithFormat:@"%i", health];
    
    if (self.health.healthScore < 0) {
        UIAlertView *deadAlert = [[UIAlertView alloc] initWithTitle:@"You Died!" message:@"Please start again" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Restart", nil];
        [deadAlert show];
    }
    
}

- (void)toggleButtons:(CGPoint)currentPosition
{
    
    if (currentPosition.y == 0) {
        self.southButton.hidden = YES;
    } else {
        self.southButton.hidden = NO;
    }
    
    if (currentPosition.y == 3) {
        self.northButton.hidden = YES;
    } else {
        self.northButton.hidden = NO;
    }
    
    if (currentPosition.x == 0) {
        self.westButton.hidden = YES;
    } else {
        self.westButton.hidden = NO;
    }
    
    if (currentPosition.x == 2) {
        self.eastButton.hidden = YES;
    } else {
        self.eastButton.hidden = NO;
    }
    
    
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"Button Index =%ld",buttonIndex);
    if (buttonIndex == 0)
    {
        [self viewDidLoad];
    }
    else if(buttonIndex == 1)
    {
        NSLog(@"You have clicked GOO");
    }
}


@end
