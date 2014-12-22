

#import "ToDoItem.h"

@implementation ToDoItem

- (id) initWithCoder:(NSCoder *) coder {
    self = [super init];
    
    if (self) {
        self.task = [coder decodeObjectForKey: @"task"];
        self.isImportant = [coder decodeBoolForKey: @"isImportant"];
        
        NSLog(@"decode %@", self.task);
    }
    
    return self;
}

- (void) encodeWithCoder:(NSCoder *) coder {
    NSLog(@"encode %@", self.task);

    [coder encodeObject: self.task forKey: @"task"];
    [coder encodeBool: self.isImportant forKey: @"isImportant"];
}

@end
