

#import "ToDoList.h"
#import "ToDoItem.h"

#define TO_DO_PLIST @"toDo.plist"

@interface ToDoList ()

@property (nonatomic, strong) NSMutableArray *items;

- (NSURL*) itemsURL;

@end

@implementation ToDoList

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
    NSLog(@"ToDoList - save. count: %d", self.count);
    [NSKeyedArchiver archiveRootObject: self.items toFile:[self itemsURL].path];
}

- (NSInteger) count {
    return self.items.count;
}

- (ToDoItem*) itemAtIndex: (NSInteger) index {
    return [self.items objectAtIndex: index];
}

- (void) addItem:(ToDoItem *)item {
    [self.items addObject: item];
}

- (void) removeItemAtIndex: (NSInteger) index {
    [self.items removeObjectAtIndex: index];
}

+ (ToDoList*) sharedInstance {
    static ToDoList* shared;
    
    if (shared == nil) {
        shared = [[ToDoList alloc] init];
    }
    
    return shared;
}

@end
