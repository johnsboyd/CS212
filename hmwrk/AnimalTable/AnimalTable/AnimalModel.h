//
//  AnimalModel.h
//  Animal
//
//  Created by Jason Schatz on 11/15/12.
//  Copyright (c) 2012 Jason Schatz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnimalModel : NSObject {
    NSArray *animalNames;
}

+ (AnimalModel*) sharedInstance;

- (UIImage*) imageForIndex: (NSInteger) index;
- (UIImage*) thumbnailImageForIndex: (NSInteger) index;
- (NSString*) animalNameForIndex: (NSInteger) index;
- (NSInteger) count;

@end
