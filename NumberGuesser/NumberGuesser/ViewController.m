//
//  ViewController.m
//  NumberGuesser
//
//  Created by John Boyd on 2/4/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "ViewController.h"
#import "NumberGuesser.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.view.backgroundColor = [UIColor orangeColor];
    
    // Create a Label Object
    self.label = [[UILabel alloc] init];
    
    // Configure the Label
   
    self.label.frame = CGRectMake( 110, 200, 100, 40);
    self.label.textAlignment = NSTextAlignmentCenter;
    
    // Add a lable to the root view object
    [self.view addSubview: self.label];
    
    // Create a higher button object
    self.higher = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    
    //hb = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    
    // Configure the higher button
    self.higher.frame = CGRectMake(110, 250, 100, 40);
    [self.higher setTitle: @"Higher" forState: UIControlStateNormal];
    [self.higher  addTarget:self action: @selector(higherButtonClicked) forControlEvents:UIControlEventTouchDown];
    
    // Add the higher button to the root view
    [self.view addSubview: self.higher];
    
    
    // Create a lower button object
    self.lower  = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    //[self.lower addTarget:self action: @selector(lowerButtonClicked) forControlEvents:UIControlEventTouchDown];

    // Configure the lower button
    self.lower.frame = CGRectMake(110, 300, 100, 40);
    [self.lower setTitle: @"Lower" forState: UIControlStateNormal];
    [self.lower addTarget:self action: selector(buttonClicked:) forControlEvents:UIControlEventTouchDown];
    
    // Add the lower button to the root view
    [self.view addSubview: self.lower];
    
    // Create the number guesser
    self.guesser = [[NumberGuesser alloc] initWithLowerBound:1 upperBound: 100];
    [self setLabelText: self.guesser.guess];

}

- (void) higherButtonClicked: (id) sender {
    
    if (sender == self.lower) [
        [self.guesser lower]];
    } else {
        [self.guesser higher];
    }

    [self setLabelText: self.guesser.guess];
}


}
- (void) setLabelText: (NSInteger) value {
    self.label.text = [NSString stringWithFormat: @"is it %d", value];
}


@end
