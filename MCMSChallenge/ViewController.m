//
//  ViewController.m
//  MCMSChallenge
//
//  Created by tim on 3/17/15.
//  Copyright (c) 2015 Timothy Yeh. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    MagicalCreature *creature = [[MagicalCreature alloc] initWithName:@"Doxy"];

    MagicalCreature *creature1 = [[MagicalCreature alloc] initWithName:@"Griffin"];

    MagicalCreature *creature2 = [[MagicalCreature alloc] initWithName:@"Sphinx"];

    self.creatures = [NSMutableArray arrayWithObjects:creature, creature1, creature2, nil];

}

#pragma mark - UITableViewDelegate, UITableViewDataSource Protocols

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.creatures.count;


}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    MagicalCreature *magicalCreature = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = magicalCreature.name;
    return cell;

}

@end
