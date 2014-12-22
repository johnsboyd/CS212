//
//  Circle.m
//  Shapes
//
//  Created by John Boyd on 2/06/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "Circle.h"

@implementation Circle


- (instancetype) initWithX:(float)xv y:(float)yv radius: (float) r {
    
    self = [super initWithX: xv y: yv];
    
    if (self) {
        self.radius = r;
    }
    
    return self;
}

- (float) area {
    return 3.14 * self.radius * self.radius;
}

- (float) distanceFromOrigin {
    return sqrt(pow(self.x, 2) + pow(self.y, 2));
}

@end











