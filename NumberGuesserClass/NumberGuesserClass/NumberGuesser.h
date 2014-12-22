//
//  NumberGuesser.h
//  NumberGuesserClass
//
//  Created by John Boyd on 1/30/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NumberGuesser : NSObject
{
}
@property(readonly) NSInteger guess;
@property NSInteger guessCount;
@property NSInteger lowerBound;
@property NSInteger upperBound;

- (id) initWithLowerBound: (NSInteger) l upperBound: (NSInteger) u;

- (void) guessLower;
- (void) guessHigher;
- (void) reset;

@end
