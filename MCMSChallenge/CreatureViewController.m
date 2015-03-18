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
@property (weak, nonatomic) IBOutlet UITextField *textFiledEdit;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.creatureName.text = self.creature.name;
     self.textFiledEdit.hidden = YES;

    
}

- (IBAction)editButton:(UIBarButtonItem *)sender {


    if([sender.title isEqualToString:@"Edit"])
    {
        sender.title = @"Done";
        self.textFiledEdit.hidden = NO;

    } else if ([sender.title isEqualToString:@"Done"])
    {
        sender.title =  @"Edit";
        self.textFiledEdit.hidden = YES;

    }
}


@end
