//
//  ViewController.m
//  TextApp
//
//  Created by John Boyd on 3/4/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // ChangeBackground Color
    self.view.backgroundColor = [UIColor yellowColor];
    
	// Create the Text Field
    CGRect f = CGRectMake(50, 100, 220, 50);
    UITextField *tf = [[UITextField alloc] initWithFrame: f];
    tf.backgroundColor = [UIColor whiteColor];
    tf.borderStyle = UITextBorderStyleBezel;
    [self.view addSubview: tf];
    self.textField = tf;
    self.textField.delegate = self;
    
    
    // Create the Button
    f = CGRectMake(50, 180, 220, 50);
    UIButton *b = [UIButton buttonWithType: UIButtonTypeSystem];
    b.frame = f;
    [b setTitle: @"Clear" forState: UIControlStateNormal];
    [b addTarget: self action: @selector(clearButtonClicked:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview: b];
}

- (void) clearButtonClicked: (UIButton*) sender {
    self.textField.text = @"";
    [self.textField resignFirstResponder];
    NSLog(@"button clicked...");
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"should return...");
    [textField resignFirstResponder];
    return YES;
}

/*
- (BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSLog(@);
}
*/

@end
