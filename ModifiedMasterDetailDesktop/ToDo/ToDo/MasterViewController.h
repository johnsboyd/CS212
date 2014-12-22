

#import <UIKit/UIKit.h>

@class ToDoList;

@interface MasterViewController : UITableViewController

@property(nonatomic, weak) ToDoList* toDoList;
@property(nonatomic) BOOL segueToNewItem;

@end
