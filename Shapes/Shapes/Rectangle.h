//
//  Rectangle.h
//  Shapes
//
//  Created by John Boyd on 2/06/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "Shape.h"

@interface Rectangle : Shape

@property float height;
@property float width;

- (instancetype) initWithX:(float)xv y:(float)yv height: (float) h width: (float) w;

@end
