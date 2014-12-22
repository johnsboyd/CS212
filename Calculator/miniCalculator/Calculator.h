//
//  Calculator.h
//  Calculator
//
//  Created by John Boyd on 2/15/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
{
}

@property NSString* currentDisplay;
@property NSInteger entry;
@property NSInteger sign;
@property NSInteger runningTotal;

- (void) processInput: (char) c;
- (NSString*) displayString;
- (void) clearAll;
- (void) addNum;
- (void) one;
- (void) two;
- (void) three;
- (void) clear;
- (void) minus;
- (void) plus;
- (void) equals;


- (id) initWithRunningTotal: (NSInteger) r sign: (NSInteger) s;

@end
