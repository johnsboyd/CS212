//
//  MasterViewController.h
//  MasterDetail
//
//  Created by jboyd on 3/18/14.
//  Copyright (c) 2014 jboyd. All rights reserved.
//


#import <UIKit/UIKit.h>

@class DateList;

@interface MasterViewController : UITableViewController

@property(nonatomic, weak) DateList* dateList;
@property(nonatomic) BOOL segueToNewItem;

@end