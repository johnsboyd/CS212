//
//  DateList.m
//  MasterDetail
//
//  Created by John Boyd on 4/7/14.
//  Copyright (c) 2014 jboyd. All rights reserved.
//


#import "DateList.h"
#import "DateItem.h"

#define TO_DO_PLIST @"date.plist"

@interface DateList ()

@property (nonatomic, strong) NSMutableArray *items;

- (NSURL*) itemsURL;

@end

@implementation DateList

- (id) init {
    self = [super init];
    
    if (self) {
        // Attempt to read from Documents directory
        self.items = [NSKeyedUnarchiver unarchiveObjectWithFile: [self itemsURL].path];
        
        // If there is no persistent array, make a new array
        if (self.items == nil) {
            self.items = [NSMutableArray array];
        }
    }
    
    return self;
}


#pragma mark - Persistence



- (NSURL*) itemsURL {
    NSURL *documentsURL = [[[NSFileManager defaultManager]
                            URLsForDirectory: NSDocumentDirectory
                            inDomains: NSUserDomainMask] lastObject];
    
    return [documentsURL URLByAppendingPathComponent: TO_DO_PLIST];
}

- (void) save {
    NSLog(@"DateList - save. count: %d", self.count);
    [NSKeyedArchiver archiveRootObject: self.items toFile:[self itemsURL].path];
}

- (NSInteger) count {
    return self.items.count;
}

- (DateItem*) itemAtIndex: (NSInteger) index {
    return [self.items objectAtIndex: index];
}

- (void) addItem:(DateItem *)item {
    [self.items addObject: item];
}

- (void) removeItemAtIndex: (NSInteger) index {
    [self.items removeObjectAtIndex: index];
}

+ (DateList*) sharedInstance {
    static DateList* shared;
    
    if (shared == nil) {
        shared = [[DateList alloc] init];
    }
    
    return shared;
}

@end
