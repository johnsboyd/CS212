//
//  Circle.m
//  CircleClass
//
//  Created by John Boyd on 1/23/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (float) area {
    //return pi*r^2
    return pow(self.radius,2) * 3.14;
}


- (BOOL) doesOverlap: (Circle *) cref {
    float dist = sqrt( pow(self.x - [cref x],2) + pow(self.y - [cref y],2) );
    float sradius = self.radius + [cref radius];
    if ( sradius > dist ) {
        return true;
    } else {
        return false;
    }
}


- (void) setX: (float) value {
    x = value;
}
- (float) x {
    return x;
}

- (void) setY: (float) value {
    y = value;
}
- (float) y {
    return y;
}

- (void) setRadius: (float) value {
    radius = value;
}
- (float) radius {
    return radius;
}


- (id) init {
    self = [super init];
    
    if (self) {
        //do some work
        self.radius=0;
        self.x=0;
        self.y=0;
    }
    
    return self;
}


- (id) initWithRadius: (float) rv x: (float) xv y: (float) yv {
    
    self = [super init];
    
    if (self) {
        //do some work
        self.radius=rv;
        self.x=xv;
        self.y=yv;
    }
    
    return self;
}

@end

