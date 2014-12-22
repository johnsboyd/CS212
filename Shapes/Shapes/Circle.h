//
//  Circle.h
//  Shapes
//
//  Created by John Boyd on 2/06/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "Shape.h"

@interface Circle : Shape

@property float radius;

- (instancetype) initWithX:(float)xv y:(float)yv radius: (float) r;

- (float) distanceFromOrigin;

@end
