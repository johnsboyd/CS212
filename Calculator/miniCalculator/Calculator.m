//
//  Calculator.m
//  Calculator
//
//  Created by John Boyd on 2/15/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (void) processInput: (char) c {
    if (c == '1'){
        [self one];
    } else if (c == '2'){
        [self two];
    } else if (c == '3'){
        [self three];
    } else if (c == 'C'){
        [self clear];
    } else if (c == '+'){
        [self plus];
    } else if (c == '-'){
        [self minus];
    } else if (c == '='){
        [self equals];
    }
}

- (NSString*) displayString {
    return self.currentDisplay;
}

- (void) addNum {
    self.runningTotal = self.runningTotal + self.entry * self.sign;
}

- (void) clearAll {
    self.runningTotal = 0;
    [self setSign: 1];
}

- (void) one {
    self.currentDisplay = @"1";
    [self setEntry: 1];
    [self addNum ];
}

- (void) two {
    self.currentDisplay = @"2";
    [self setEntry: 2];
    [self addNum ];
}

- (void) three {
    self.currentDisplay = @"3";
    [self setEntry: 3];
    [self addNum ];
}

- (void) clear {
    self.currentDisplay = @"0";
    [self clearAll];
}

- (void) minus {
    self.currentDisplay = @"-";
    [self setSign: -1];
}

- (void) plus {
    self.currentDisplay = @"+";
    [self setSign: 1];
}

- (void) equals {
    self.currentDisplay = [NSString stringWithFormat: @"%d", self.runningTotal];
    [self clearAll];
}


- (id) initWithRunningTotal: (NSInteger) r sign: (NSInteger) s {
    self = [super init];
    
    if (self) {
        //do some work
        self.runningTotal = r;
        self.sign = s;
    }
    
    return self;
}

@end
