//
//  main.m
//  Shapes
//
//  Created by John Boyd on 2/06/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"
#import "Rectangle.h"
#import "Circle.h"
#import "Square.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableArray *shapes = [NSMutableArray array];
        
        [shapes addObject: [[Circle alloc] initWithX: 0 y: 0 radius: 1]];
        [shapes addObject: [[Circle alloc] initWithX: 0 y: 0 radius: 1]];
        [shapes addObject: [[Rectangle alloc] initWithX: 0 y: 0 height: 1 width: 3]];
        [shapes addObject: [[Square alloc] initWithX:0 y:0 height:4 width:4]];
        
        
        float total = 0;
        
        for (Shape* s in shapes) {
            total += s.area;
        }
        
        NSLog(@"total: %.1f", total);
    }
    return 0;
}

