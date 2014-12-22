//
//  NGViewController.h
//  UITutorial
//
//  Created by John Boyd on 2/11/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NumberGuesser;


@interface NGViewController: UIViewController

- (void) setLabelText: (NSInteger) value;

@property (nonatomic, strong) IBOutlet UILabel *label;
@property (nonatomic, strong) NumberGuesser *guesser;
@property (nonatomic, strong) IBOutlet UIButton *higherButton;
@property (nonatomic, strong) IBOutlet UIButton *lowerButton;

- (IBAction) buttonClicked:(id)sender;

@end
