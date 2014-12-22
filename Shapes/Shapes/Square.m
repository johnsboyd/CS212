//
//  Square.m
//  Shapes
//
//  Created by John Boyd on 2/7/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "Square.h"

@implementation Square

- (instancetype) initWithX:(float)xv y:(float)yv side: (float) s {
    
    self = [super initWithX: xv y: yv];
    
    if (self) {
        self.height = s;
        self.width = s;
    }
    
    return self;
}



@end
