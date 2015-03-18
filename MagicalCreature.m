//
//  MagicalCreature.m
//  MCMSChallenge
//
//  Created by tim on 3/17/15.
//  Copyright (c) 2015 Timothy Yeh. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature
-(instancetype) initWithName:(NSString *)name andDetail:(NSString *)detail andImage:(UIImage *)image
{
    self=[super init];
    self.name = name;
    self.detail = detail;
    self.image = image;

    return self;


}
@end
