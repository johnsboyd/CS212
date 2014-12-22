//
//  ViewController.m
//  SegueTest
//
//  Created by John Boyd on 3/18/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController


- (IBAction)ButtonPressed:(id)sender {
    
    NSString *segueID;
    
    segueID = (sender == self.aButton) ? @"SegueToA" : @"SegueToB";
    
    [self performSegueWithIdentifier:@"SegueToB" sender: self];
}

@end