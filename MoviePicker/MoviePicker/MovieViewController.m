//
//  ViewController.m
//  MoviePicker
//
//  Created by John Boyd on 2/27/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "MovieViewController.h"
#import "MovieModel.h"

@interface MovieViewController ()

@end

@implementation MovieViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.model = [MovieModel model];
}



// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
        return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
        return self.model.count;
}


- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (pickerView == _moviePicker) {
        return [self.model movieForIndex: row];
    } else {
        return [self.model actorForIndex: row];
    }
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (pickerView == _moviePicker) {
        [self.actorPicker selectRow:row inComponent:component animated:YES];
    } else {
        [self.moviePicker selectRow:row inComponent:component animated:YES];
    }
}

@end
