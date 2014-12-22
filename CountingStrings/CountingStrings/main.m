//
//  main.m
//  CountingStrings
//
//  Created by John Boyd on 1/20/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//  CS212

#import <Foundation/Foundation.h>

NSString* readNSStringFromStdin() {
    char buffer[1000];
    scanf("%999s", buffer);
    
    return [NSString stringWithUTF8String: buffer];
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *a = [[NSMutableArray alloc]init];
        NSString *s;
        NSInteger totalChars = 0;

        NSLog(@"Enter strings. Enter the string \"done\" when you are done.\n");
        do {
            s = readNSStringFromStdin();
            NSInteger len = [ s length];
            totalChars = totalChars + len;
            [a addObject: s];
        } while (![s isEqualToString:@"done"]);
        // with "done" as the last word we subtract 1 word or 4 letters from our counts...
        NSLog(@"Number of Strings: %li\nTotal character count: %li", [a count]-1, totalChars-4);
    }
    return 0;
}

