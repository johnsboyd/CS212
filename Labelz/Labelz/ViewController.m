//
//  ViewController.m
//  Labelz
//
//  Created by John Boyd on 2/4/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)boobs:(id)sender {
    
    self.johnLabel.text = @"I love boobs!";
}
@end
