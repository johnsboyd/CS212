//
//  ViewController.h
//  UIWidgets
//
//  Created by John Boyd on 2/18/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WidgetViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UISwitch *switchView;
@property (weak, nonatomic) IBOutlet UIProgressView *progress;
@property (weak, nonatomic) IBOutlet UIPageControl *page;

- (IBAction)sliderValueChanged:(UISlider *)sender;
- (IBAction)switchValueChanged:(UISwitch *)sender;


@end
