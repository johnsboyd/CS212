//
//  Rectangle.m
//  Rectangles
//
//  Created by John Boyd on 1/21/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

- (float) area {
    //return height * width;
    //return height * _width;
    return self.height * self.width;
}
//- (void) setHeight: (float) value {
    //height = value;
//}
//- (float) height {
//    return height;
//}

//- (void) setWidth: (float) value {
//    width = value;
//}
//- (float) width {
//    return width;
//}

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

- (id) init {
    self = [super init];
    
    if (self) {
        //do some work
        //height=0;
        self.height=0;
        //width=0;
        self.width=0;
        x=0;
        y=0;
    }
    
    return self;
}
- (id) initWithHeight: (float) h   width: (float) w   x: (float) xv   y: (float) yv {
    self = [super init];
    
    if (self) {
        //do some work
        //height=h;
        self.height=h;
        //width=w;
        self.width=w;
        x=xv;
        y=yv;

    }
    
    return self;
}

@end
