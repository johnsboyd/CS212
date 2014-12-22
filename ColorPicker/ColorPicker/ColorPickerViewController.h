//
//  ColorPickerViewController.h
//  ColorPicker
//
//  Created by Jason Schatz on 2/25/14.
//  Copyright (c) 2014 CCSF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorPickerModel.h"

@interface ColorPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) ColorPickerModel* model;

@end
