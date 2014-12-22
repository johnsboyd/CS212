//
//  main.m
//  firstTest
//
//  Created by John Boyd on 1/14/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    NSString *s1 = @"Hello World";
    NSString *s2;
    
    if ([s1 isEqualToString: s2]) {
        NSLog(@"equal...");
    } else {
        NSLog(@"not equal...");
    }
    
    if ([@"abcd" isEqualToString: s1]) {
        NSLog(@"equal...");
    } else {
        NSLog(@"not equal...");
    }

    s2 = [s1 stringByReplacingOccurrencesOfString: @"l" withString: @"-"];
    NSLog(@"%@", s2);
    
}

