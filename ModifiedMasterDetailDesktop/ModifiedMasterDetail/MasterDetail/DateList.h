//
//  DateList.h
//
//  Created by John Boyd on 4/7/14.
//  Copyright (c) 2014 jboyd. All rights reserved.
//


#import <Foundation/Foundation.h>

@class DateItem;

@interface DateList : NSObject

@property(readonly) NSInteger count;

- (DateItem*) itemAtIndex: (NSInteger) index;
- (void) addItem: (DateItem*) item;
- (void) removeItemAtIndex: (NSInteger) index;
- (void) save;

// Singleton class method
+ (DateList*) sharedInstance;

@end