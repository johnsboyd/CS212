//
//  DateItem.m
//
//  Created by John Boyd on 4/7/14.
//  Copyright (c) 2014 jboyd. All rights reserved.
//

#import "DateItem.h"


@implementation DateItem

- (id) initWithCoder:(NSCoder *) coder {
    self = [super init];
    
    if (self) {
        self.task = [coder decodeObjectForKey: @"task"];
        
        NSLog(@"decode %@", self.task);
    }
    
    return self;
}

- (void) encodeWithCoder:(NSCoder *) coder {
    NSLog(@"encode %@", self.task);
    
    [coder encodeObject: self.task forKey: @"task"];
}

@end
