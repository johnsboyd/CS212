//
//  ViewController.h
//  Calculator
//
//  Created by John Boyd on 2/14/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Calculator;

@interface ViewController : UIViewController


- (void) setLabelText: (NSString*) value;


@property (nonatomic, strong) Calculator *mc;
@property (nonatomic, strong) IBOutlet UILabel *label;
@property (nonatomic, strong) IBOutlet UIButton *press1;
@property (nonatomic, strong) IBOutlet UIButton *press2;
@property (nonatomic, strong) IBOutlet UIButton *press3;
@property (nonatomic, strong) IBOutlet UIButton *pressC;
@property (nonatomic, strong) IBOutlet UIButton *pressPlus;
@property (nonatomic, strong) IBOutlet UIButton *pressMinus;
@property (nonatomic, strong) IBOutlet UIButton *pressEquals;


- (IBAction) buttonClicked:(id)sender;

@end
