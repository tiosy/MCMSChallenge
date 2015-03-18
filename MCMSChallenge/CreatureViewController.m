//
//  CreatureViewController.m
//  MCMSChallenge
//
//  Created by tim on 3/17/15.
//  Copyright (c) 2015 Timothy Yeh. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController ()
@property (weak, nonatomic) IBOutlet UILabel *creatureName;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.creatureName.text = self.creature.name;

    
}



@end
