//
//  ViewController.m
//  MCMSChallenge
//
//  Created by tim on 3/17/15.
//  Copyright (c) 2015 Timothy Yeh. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    MagicalCreature *creature = [[MagicalCreature alloc] initWithName:@"Doxy"];

    MagicalCreature *creature1 = [[MagicalCreature alloc] initWithName:@"Griffin"];

    MagicalCreature *creature2 = [[MagicalCreature alloc] initWithName:@"Griffin"];




}


@end
