//
//  ColorPickerModel.m
//  ColorPicker
//
//  Created by Jason Schatz on 2/25/14.
//  Copyright (c) 2014 CCSF. All rights reserved.
//

#import "ColorPickerModel.h"

@implementation ColorPickerModel {
    NSArray* _titles;
    NSArray* _colors;
}

- (instancetype) init {
    self = [super init];
    
    if (self) {
        _titles = @[@"Red",
                    @"Orange",
                    @"Blue",
                    @"Gray",
                    @"Yellow",
                    @"Green"
                    ];
        _colors = @[[UIColor redColor],
                    [UIColor orangeColor],
                    [UIColor blueColor],
                    [UIColor grayColor],
                    [UIColor yellowColor],
                    [UIColor greenColor]
                    ];
    }
    
    return self;
}

+ (instancetype) model {
    return [ColorPickerModel new];
}

- (UIColor*) colorForIndex: (NSInteger) index {
    return [_colors objectAtIndex: index];
}

- (NSString*) colorTitleForIndex: (NSInteger) index {
    return [_titles objectAtIndex: index];
}

- (NSInteger) count {
    return _titles.count;
}

@end
