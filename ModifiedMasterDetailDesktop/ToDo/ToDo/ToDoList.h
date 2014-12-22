

#import <Foundation/Foundation.h>

@class ToDoItem;

@interface ToDoList : NSObject

@property(readonly) NSInteger count;

- (ToDoItem*) itemAtIndex: (NSInteger) index;
- (void) addItem: (ToDoItem*) item;
- (void) removeItemAtIndex: (NSInteger) index;
- (void) save;

// Singleton class method
+ (ToDoList*) sharedInstance;

@end
