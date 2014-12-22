//
//  ColorPickerModel.h
//  ColorPicker
//
//  Created by Jason Schatz on 2/25/14.
//  Copyright (c) 2014 CCSF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ColorPickerModel : NSObject

+ (instancetype) model;

- (UIColor*) colorForIndex: (NSInteger) index;
- (NSString*) colorTitleForIndex: (NSInteger) index;

@property (nonatomic, readonly) NSInteger count;

@end
