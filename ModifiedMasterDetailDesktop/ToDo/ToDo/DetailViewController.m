
#import "DetailViewController.h"
#import "ToDoItem.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureView];
}

- (void)configureView {
    if (self.item) {
        self.textField.text = [self.item task];
        
        if (self.item.isImportant) {
            [self.importantButton setTitle: @"Important" forState: UIControlStateNormal];
        } else {
            [self.importantButton setTitle: @"Not Important" forState: UIControlStateNormal];
        }
    }
}

- (IBAction)importantButtonClicked:(id)sender {
    self.item.isImportant = !self.item.isImportant;
    
    [self configureView];
}

#pragma mark - Text Field Delegate

- (BOOL) textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    NSString *newString = [self.textField.text stringByReplacingCharactersInRange: range withString: string];
    self.item.task = newString;
    
    return YES;
}

@end
