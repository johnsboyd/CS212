//
//  ViewController.m
//  Calculator
//
//  Created by John Boyd on 2/14/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mc = [[Calculator alloc] initWithRunningTotal: 0 sign: 1];
}


- (void) setLabelText: (NSString*) value {
    self.label.text = value;
}



- (IBAction) buttonClicked: (id)sender{
    if (sender == self.press1) {
        [self.mc processInput: '1'];
    } else if (sender == self.press2) {
        [self.mc processInput: '2'];
    } else if (sender == self.press3) {
        [self.mc processInput: '3'];
    } else if (sender == self.pressC) {
        [self.mc processInput: 'C'];
    } else if (sender == self.pressMinus) {
        [self.mc processInput: '-'];
    } else if (sender == self.pressPlus) {
        [self.mc processInput: '+'];
    } else if (sender == self.pressEquals) {
        [self.mc processInput: '='];
    }
    [self setLabelText: [self.mc displayString]];
}

@end
