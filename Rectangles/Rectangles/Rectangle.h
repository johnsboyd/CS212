//
//  Rectangle.h
//  Rectangles
//
//  Created by John Boyd on 1/21/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
{
    //float height;
    //float width;
    float x;
    float y;

}

@property float width;
@property float height;
@property (readonly) float area;


- (float) area;
- (void) setHeight: (float) value;
- (float) height;

- (void) setWidth: (float) value;
- (float) width;

- (void) setX: (float) value;
- (float) x;

- (void) setY: (float) value;
- (float) y;

- (id) init;
- (id) initWithHeight: (float) h width: (float) w x: (float) xv y: (float) yv;


@end
