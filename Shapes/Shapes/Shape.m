//
//  Shape.m
//  Shapes
//
//  Created by John Boyd on 2/06/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "Shape.h"

@implementation Shape

- (float) area {
    return 0;
}

- (instancetype) initWithX: (float) xv y: (float) yv {
    
    self = [super init];
    
    if (self) {
        self.x = xv;
        self.y = yv;
    }
    
    return self;
}

@end
