//
//  AnimalModel.h
//  Animal
//
//  Created by John Boyd on 3/6/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
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
