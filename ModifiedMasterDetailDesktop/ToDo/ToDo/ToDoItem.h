
#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject <NSCoding>

@property (nonatomic, strong) NSString *task;
@property (nonatomic) BOOL isImportant;

@end
