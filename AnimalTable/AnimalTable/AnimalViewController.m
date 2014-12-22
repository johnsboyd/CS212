
#import "AnimalViewController.h"

@interface AnimalViewController ()

@end

@implementation AnimalViewController {
    NSMutableArray *_animals;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _animals = [NSMutableArray arrayWithArray: @[@"Monkey", @"Aligator", @"Tiger", @"Dog", @"Giraffe",
                                                 @"Horse", @"Penguin"]];
    
    self.tableView.editing = YES;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _animals.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *TopRowCellIdentifier = @"TopCell";
    static NSString *BottomRowCellIdentifier = @"BottomCell";
    static NSString *NormalCellIdentifier = @"NormalCell";
    
    NSString *reuseIdForThisCell;
    
    // Find the right reuse identifier for this indexPath
    if (indexPath.row % 3 == 0)
        reuseIdForThisCell = TopRowCellIdentifier;
    else if (indexPath.row % 3 == 1)
        reuseIdForThisCell = BottomRowCellIdentifier;
    else
        reuseIdForThisCell = NormalCellIdentifier;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdForThisCell forIndexPath:indexPath];

    NSString *name = [_animals objectAtIndex: indexPath.row];
    cell.textLabel.text = name;
    cell.detailTextLabel.text = [NSString stringWithFormat: @"A %@ is an animal.", name];
    cell.imageView.image = [UIImage imageNamed: @"images.jpg"];
    cell.showsReorderControl = YES;

    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"AnimalViewController - didSelectRowAtIndexPath: %d", indexPath.row);
    [tableView deselectRowAtIndexPath: indexPath animated: YES];
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView
                    commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
                    forRowAtIndexPath:(NSIndexPath *)indexPath {

    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_animals removeObjectAtIndex: indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationMiddle];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // What should we do here?
    }   
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
    // Update the model
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

#pragma mark - Navigation

/**************************************** Next Week ... ******************************************
// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

**************************************************************************************************/

- (IBAction) toggleEditing:(id)sender{
    [self.tableView setEditing: YES];
}

@end
