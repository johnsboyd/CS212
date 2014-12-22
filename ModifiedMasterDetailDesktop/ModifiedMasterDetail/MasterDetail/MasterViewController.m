//
//  MasterViewController.m
//  MasterDetail
//
//  Created by jboyd on 3/18/14.
//  Copyright (c) 2014 jboyd. All rights reserved.
//



#import "MasterViewController.h"
#import "DetailViewController.h"
#import "DateItem.h"
#import "DateList.h"

#define SEGUE_ID @"DetailSegue"


@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Get the shared dateList
    self.dateList = [DateList sharedInstance];
    
    // Left Bar Button
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    // Right Bar Button
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    [self.dateList save];
    [self.tableView reloadData];
}

- (void)insertNewObject:(id)sender {
    
    [self.dateList addItem: (DateItem *)[NSDate date]];
    [self.dateList save];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table View

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier: SEGUE_ID sender: self];
}


- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dateList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    DateItem *item = [self.dateList itemAtIndex: indexPath.row];
    cell.textLabel.text = [item description];
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.dateList removeItemAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    [self.dateList save];
}




#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    
    NSIndexPath *selectedRow;
    DateItem *dataObjectForSelectedRow;
    
    if ([[segue identifier] isEqualToString: SEGUE_ID]) {
        selectedRow = [self.tableView indexPathForSelectedRow];
        dataObjectForSelectedRow = [self.dateList itemAtIndex: selectedRow.row];
        
        DetailViewController *dtv = segue.destinationViewController;
        dtv.detailItem = dataObjectForSelectedRow;
    }
    
    
}

@end







