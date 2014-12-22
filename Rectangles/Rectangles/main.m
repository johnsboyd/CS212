//
//  main.m
//  Rectangles
//
//  Created by John Boyd on 1/21/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Rectangle *r1;
        
        
        r1 = [[Rectangle alloc] init];
        
        [r1 setHeight: 5 ];
        [r1 setWidth: 20];
        
        
        
        NSLog(@"The area of r1 is: %.1f", [r1 area]);
        
        Rectangle *r2;
        
        r2 = [[Rectangle alloc] initWithHeight:2 width:3 x:1 y:1];
        
        NSLog(@"The area of r2 is: %.1f", [r2 area]);
        
        Rectangle *r3;
        
        r3 = [[Rectangle alloc] init];
        
        r3.height = 6;
        r3.width = 7;
        
        NSLog(@"The area of r3 is: %.1f", [r3 area]);
        
        Rectangle *r4;
        
        r4 = [[Rectangle alloc] init];
        
        r3.height = 8;
        r3.width = 9;
        
        NSLog(@"The area of r4 is: %.1f", [r3 area]);

        
    }
    return 0;
}

