//
//  MSGViewController.h
//  PirateGame
//
//  Created by Sunny on 13/07/2014.
//  Copyright (c) 2014 Sunny. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MSGHealth.h"

@interface MSGViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImage;

@property (strong, nonatomic) IBOutlet UIView *characterView;
@property (strong, nonatomic) IBOutlet UIView *actionView;
@property (strong, nonatomic) IBOutlet UIView *storyView;

@property (strong, nonatomic) IBOutlet UILabel *healthScoreText;
@property (strong, nonatomic) IBOutlet UILabel *damageScoreText;
@property (strong, nonatomic) IBOutlet UILabel *weaponText;
@property (strong, nonatomic) IBOutlet UILabel *armorText;
@property (strong, nonatomic) IBOutlet UILabel *storyText;

@property (strong, nonatomic) IBOutlet UIButton *actionButton;
- (IBAction)actionButtonPressed:(id)sender;


@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;

- (IBAction)eastButtonPressed:(UIButton *)sender;
- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)resetButtonPressed:(UIButton *)sender;


@property (strong, nonatomic) IBOutlet UIButton *eastButtonPressed;

@property (nonatomic) CGPoint tilePoint;
@property (strong, nonatomic) MSGHealth *health;

@end
