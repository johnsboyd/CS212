//
//  ViewController.h
//  MoviePicker
//
//  Created by John Boyd on 2/27/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieModel.h"

@interface MovieViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) MovieModel* model;
@property (nonatomic, retain) IBOutlet UIPickerView *actorPicker;
@property (nonatomic, retain) IBOutlet UIPickerView *moviePicker;


@end
