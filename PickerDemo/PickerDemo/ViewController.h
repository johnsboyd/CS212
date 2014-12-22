//
//  ViewController.h
//  PickerDemo
//
//  Created by John Boyd on 2/25/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>


@property (strong, nonatomic) NSMutableArray *cars;
@end
