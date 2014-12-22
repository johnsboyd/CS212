//
//  ViewController.h
//  AnimalTable
//
//  Created by John Boyd on 3/6/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimalModel.h"

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>{
    NSInteger n;
}

@property NSMutableArray *sectionTitles;
@property NSMutableDictionary *tableData;
@property (strong, nonatomic) AnimalModel* model;

@end
