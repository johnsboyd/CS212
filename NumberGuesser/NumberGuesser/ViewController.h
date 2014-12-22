//
//  ViewController.h
//  NumberGuesser
//
//  Created by John Boyd on 2/4/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NumberGuesser.h"

@interface ViewController : UIViewController



- (void) higherButtonClicked;
- (void) lowerButtonClicked;

@property (nonatomic, strong) NumberGuesser *guesser;
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton higher;
@property (nonatomic, strong) UIbutton lower;


- (void) setLabelText: (NSInteger) value;

@end
