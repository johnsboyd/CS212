//
//  AnimalModel.m
//  Animal
//
//  Created by Jason Schatz on 11/15/12.
//  Copyright (c) 2012 Jason Schatz. All rights reserved.
//

#import "AnimalModel.h"

@implementation AnimalModel

- (id) init {
    self = [super init];
    NSString *plistPath;
    
    if (self) {
        plistPath = [[NSBundle mainBundle] pathForResource:@"animalNames" ofType:@"plist"];
        animalNames = [NSArray arrayWithContentsOfFile: plistPath];
    }
    
    return self;
}

+ (AnimalModel*) sharedInstance {
    static AnimalModel* shared;
    
    if (!shared) {
        shared = [[AnimalModel alloc] init];
    }
    
    return shared;
}

- (UIImage*) imageForIndex: (NSInteger) index {
    NSString *imageName = [NSString stringWithFormat: @"%@.png", [animalNames objectAtIndex: index]];
    return [UIImage imageNamed: imageName];
}

- (UIImage*) thumbnailImageForIndex: (NSInteger) index {
    NSString *imageName = [NSString stringWithFormat: @"%@.thumb.png", [animalNames objectAtIndex: index]];
    return [UIImage imageNamed: imageName];
}

- (NSString*) animalNameForIndex: (NSInteger) index {
    NSString *lowerCaseName = [animalNames objectAtIndex: index];
    return [lowerCaseName capitalizedString];
}

- (NSInteger) count {
    return animalNames.count;
}

@end
