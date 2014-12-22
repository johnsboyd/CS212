
#import "ColorPickerViewController.h"
#import "ColorPickerModel.h"


@implementation ColorPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [ColorPickerModel model];
}

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    NSLog(@"numberOfComponents...");
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return self.model.count;
}


- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.model colorTitleForIndex: row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {

    UIColor* c = [self.model colorForIndex: row];
    self.view.backgroundColor = c;
}

@end
