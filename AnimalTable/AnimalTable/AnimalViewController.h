//
//  AnimalTableViewController.h
//  AnimalTable
//
//  Created by Jason Schatz on 3/11/14.
//  Copyright (c) 2014 CCSF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimalViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) UITableView *tableView;

- (IBAction) toggleEditing:(id)sender;

@end
