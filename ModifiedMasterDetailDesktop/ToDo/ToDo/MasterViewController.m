
#import "MasterViewController.h"
#import "DetailViewController.h"
#import "ToDoItem.h"
#import "ToDoList.h"

#define SEGUE_ID @"showItem"


@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Start segueToNewItem to false
    self.segueToNewItem = NO;
    
    // Get the shared toDoList
    self.toDoList = [ToDoList sharedInstance];

    // Left Bar Button
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    // Right Bar Button
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    [self.toDoList save];
    [self.tableView reloadData];
}

- (void)insertNewObject:(id)sender {
    self.segueToNewItem = YES;
    [self performSegueWithIdentifier: SEGUE_ID sender: self];
}

#pragma mark - Table View

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.toDoList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    ToDoItem *item = [self.toDoList itemAtIndex: indexPath.row];
    cell.textLabel.text = item.task;
    
    if (item.isImportant) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
        [self.toDoList removeItemAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [self.toDoList save];
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier: SEGUE_ID sender: self];
}


#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    // Get the proper item
    ToDoItem *item;
    
    if (self.segueToNewItem) {
        self.segueToNewItem = NO;
        item = [[ToDoItem alloc] init];
        [self.toDoList addItem: item];
    } else {
        item = [self.toDoList itemAtIndex: indexPath.row];
    }
    
    // Set the item and segueue
    DetailViewController *detailViewController = segue.destinationViewController;
    detailViewController.item = item;
}

@end






