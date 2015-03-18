//
//  BattleViewController.m
//  MCMSChallenge
//
//  Created by tim on 3/17/15.
//  Copyright (c) 2015 Timothy Yeh. All rights reserved.
//

#import "BattleViewController.h"


@interface BattleViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@property (weak, nonatomic) IBOutlet UIImageView *imageview;



@end

@implementation BattleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

  self.nameLabel.text = self.WinningCreature.name;
    self.imageview.image = self.WinningCreature.image;
    self.detailLabel.text   = self.WinningCreature.detail;


}



@end
