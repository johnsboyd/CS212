//
//  Shape.h
//  Shapes
//
//  Created by John Boyd on 2/06/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shape : NSObject

@property float x;
@property float y;
@property(readonly) float area;

- (instancetype) initWithX: (float) xv y: (float) yv;

@end
