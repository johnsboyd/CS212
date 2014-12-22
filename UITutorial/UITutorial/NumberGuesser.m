//
//  NumberGuesser.m
//  UITutorial
//
//  Created by John Boyd on 2/11/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "NumberGuesser.h"

@implementation NumberGuesser


- (NSInteger) guess {
    return (self.lowerBound + self.upperBound)/2;
}

- (void) guessLower {
    self.upperBound = [self guess] - 1;
    self.guessCount++;
}


- (void) guessHigher {
    self.lowerBound = [self guess] + 1;
    self.guessCount++;
}


- (void) reset{
    self.lowerBound = 1;
    self.upperBound = 100;
}



- (id) initWithLowerBound: (NSInteger) l upperBound: (NSInteger) u {
    self = [super init];
    
    if (self) {
        //do some work
        self.lowerBound = l;
        self.upperBound = u;
        self.guessCount = 1;
    }
    
    return self;
}


@end
