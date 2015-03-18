//
//  ViewController.m
//  MCMSChallenge
//
//  Created by tim on 3/17/15.
//  Copyright (c) 2015 Timothy Yeh. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

#import "CreatureViewController.h"
#import "BattleViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *textFieldCreature;
@property (weak, nonatomic) IBOutlet UITextField *textFieldDetail;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIImage *image1 = [UIImage imageNamed:@"doxy.png"];
    MagicalCreature *creature = [[MagicalCreature alloc] initWithName:@"Doxy" andDetail:@"Doxy is small fairy-like creature covered with black hair" andImage:image1];

    UIImage *image2 = [UIImage imageNamed:@"griffin.png"];
    MagicalCreature *creature1 = [[MagicalCreature alloc] initWithName:@"Griffin" andDetail:@"The Griffin has head of a giant eagle and tail of a lion" andImage: image2];

    UIImage *image3 = [UIImage imageNamed:@"sphinx.png"];
    MagicalCreature *creature2 = [[MagicalCreature alloc] initWithName:@"Sphinx" andDetail:@"The Sphinx has a head of human, and the body of lion" andImage:image3];

    self.creatures = [NSMutableArray arrayWithObjects:creature, creature1, creature2, nil];

}


- (IBAction)addButton:(id)sender {

    MagicalCreature *newCreature = [[MagicalCreature alloc] initWithName:self.textFieldCreature.text andDetail:self.textFieldDetail.text andImage:nil];
    [self.creatures addObject: newCreature];

    //clear after input
    self.textFieldCreature.text=@"";
    self.textFieldDetail.text=@"";
    [self.textFieldCreature resignFirstResponder];

    [self.tableView reloadData];



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
    cell.detailTextLabel.text = magicalCreature.detail;
    return cell;

}


#pragma mark - segue

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    if ([segue.identifier isEqualToString:@"CreatureSegue"]) {
        CreatureViewController *creatureVC = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        creatureVC.creature = [self.creatures objectAtIndex:indexPath.row];

    }

    if ([segue.identifier isEqualToString:@"testS"]) {


                BattleViewController *battleVC = [segue destinationViewController];
        
        
                battleVC.WinningCreature = [self winnerOfBattle];
        
        
                NSString *str =battleVC.WinningCreature.name;
        


    }
//
//    } else if ([segue.identifier isEqualToString:@"BattleSegue"]) {
//       // BattleViewController *battleVC = [segue destinationViewController];
//
//
//      //  battleVC.WinningCreature = [self winnerOfBattle];
//
//
//        //NSString *str =battleVC.WinningCreature.name;
//
//    }



}

-(MagicalCreature *) winnerOfBattle {

    //Assume winner...
    UIImage *image2 = [UIImage imageNamed:@"griffin.png"];
    MagicalCreature *creature = [[MagicalCreature alloc] initWithName:@"Griffin" andDetail:@"The Griffin has head of a giant eagle and tail of a lion" andImage: image2];

    return creature;


}





@end
