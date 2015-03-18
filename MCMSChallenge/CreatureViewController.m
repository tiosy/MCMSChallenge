//
//  CreatureViewController.m
//  MCMSChallenge
//
//  Created by tim on 3/17/15.
//  Copyright (c) 2015 Timothy Yeh. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController () <UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *creatureName;
@property (weak, nonatomic) IBOutlet UITextField *textFiledEdit;
@property (weak, nonatomic) IBOutlet UILabel *creatureDetail;
@property (weak, nonatomic) IBOutlet UIImageView *imageview;
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@property  NSMutableArray *accessories;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.creatureName.text = self.creature.name;
    self.creatureDetail.text = self.creature.detail;
    self.imageview.image = self.creature.image;

    self.
     self.textFiledEdit.hidden = YES;


    //
    //
    [self.accessories addObject:@"paws"];
    [self.accessories addObject:@"yellow tail"];
    [self.accessories addObject:@"shining wings"];
    [self.accessories addObject:@"lion tails"];
    [self.accessories addObject:@"hind legs"];
    [self.accessories addObject:@"brown tuft"];
    [self.accessories addObject:@"venomous teeth"];



    
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


#pragma mark - UITableViewDelegate, UITableViewDataSource Protocols

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.accessories.count;


}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell2"];
    cell.textLabel.text = [self.accessories objectAtIndex:indexPath.row];
    return cell;
    
}



@end
