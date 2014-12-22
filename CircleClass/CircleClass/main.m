//
//  main.m
//  CircleClass
//
//  Created by John Boyd on 1/23/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Circle.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Circle *c1;
        
        c1 = [[Circle alloc] init];
        
        [c1 setRadius: 6 ];
        [c1 setX: 20];
        [c1 setY: 10];
        
        
        
        
        Circle *c2;
        
        c2 = [[Circle alloc] initWithRadius:4 x:19 y:9 ];
        NSLog(@"\nThe area of c1 is: %.1f\nThe area of c2 is: %.1f\nThe circle c1 overlaps c2: %s", [c1 area],[c2 area],[c2 doesOverlap: c1] ? "True" : "False");
    
        
        
        
        Circle *c3;
        
        c3 = [[Circle alloc] init];
        
        c3.radius = 3;
        c3.x = 7;
        c3.y = 5;
        
        
        
        Circle *c4;
        c4 = [[Circle alloc] initWithRadius:5 x:12 y:12 ];
        NSLog(@"\nThe area of c3 is: %.1f\nThe area of c4 is: %.1f\nThe circle c3 overlaps c4: %s", [c3 area],[c4 area],[c4 doesOverlap: c3] ? "True" : "False");
        
    }
    return 0;
}

