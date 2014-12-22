

#import <UIKit/UIKit.h>

@class ToDoItem;

@interface DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) ToDoItem* item;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *importantButton;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

- (IBAction)importantButtonClicked:(id)sender;

@end
