//
//  Circle.h
//  CircleClass
//
//  Created by John Boyd on 1/23/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Circle : NSObject
{
    float x;
    float y;
    float radius;
}

- (BOOL) doesOverlap: (Circle *) otherCircle;


- (float) area;


- (void) setRadius: (float) value;
- (float) radius;

- (void) setX: (float) value;
- (float) x;

- (void) setY: (float) value;
- (float) y;

- (id) init;
- (id) initWithRadius: (float) rv x: (float) xv y: (float) yv;

@end

