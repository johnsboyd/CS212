//
//  Rectangle.m
//  Shapes
//
//  Created by John Boyd on 2/06/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

- (instancetype) initWithX:(float)xv y:(float)yv height: (float) h width: (float) w {
    
    self = [super initWithX: xv y: yv];
    
    if (self) {
        self.height = h;
        self.width = w;
    }
    
    return self;
}

- (float) area {
    return self.height * self.width;
}

@end

