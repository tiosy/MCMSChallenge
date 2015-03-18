//
//  MagicalCreature.h
//  MCMSChallenge
//
//  Created by tim on 3/17/15.
//  Copyright (c) 2015 Timothy Yeh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MagicalCreature : NSObject

@property NSString *name;
@property NSString  *detail;
@property UIImage *image;

- (instancetype) initWithName:(NSString *) name andDetail:(NSString *) detail andImage: (UIImage *) image;


@end
