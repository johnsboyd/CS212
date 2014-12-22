//
//  ViewController.m
//  UIWidgets
//
//  Created by John Boyd on 2/18/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "WidgetViewController.h"

@interface WidgetViewController ()
- (void) updateUI;
@end

@implementation WidgetViewController{
    float _value;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}



- (IBAction)sliderValueChanged:(UISlider *)sender {
    //self.progress.progress = sender.value;
    _value = sender.value;
    [self updateUI];
}

- (IBAction)switchValueChanged:(UISwitch *)sender {
    if( sender.on )
    {
        _value = 1;
    } else {
        _value = 0;
    }
    [self updateUI];
}

- (void) updateUI {
    self.slider.value = _value;
    self.progress.progress = _value;
    self.switchView.on = _value > 0.5;
    self.page.currentPage = self.page.numberOfPages * _value;
}

@end
