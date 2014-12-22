//
//  NGViewController.m
//  UITutorial
//
//  Created by John Boyd on 2/11/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "NGViewController.h"
#import "NumberGuesser.h"


@implementation NGViewController


- (void) viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"NGViewController - viewDidLoad..");
     self.guesser = [[NumberGuesser alloc] initWithLowerBound:1 upperBound:100];
}

- (void) setLabelText: (NSInteger) value {
    self.label.text = [NSString stringWithFormat: @"Is it %d", value];
}

- (IBAction) buttonClicked: (id)sender{
    if (sender == self.higherButton) {
        [self.guesser guessHigher];
    } else {
        [self.guesser guessLower];
    }
    
    [self setLabelText: self.guesser.guess];
    
}

@end