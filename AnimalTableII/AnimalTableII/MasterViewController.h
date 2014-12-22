//
//  MasterViewController.h
//  AnimalTableII
//
//  Created by john on 3/20/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimalModel.h"

@interface MasterViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource>{
}

@property NSMutableArray *sectionTitles;
@property NSMutableDictionary *tableData;
@property (strong, nonatomic) AnimalModel* model;

@end
