//
//  DetailViewController.m
//  MasterDetail
//
//  Created by jboyd on 3/18/14.
//  Copyright (c) 2014 jboyd. All rights reserved.
//

//  Created by John Boyd on 4/5/14.



#import "DetailViewController.h"
//#import "DateItem.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureView];
}



- (void)configureView
{
    // Update the user interface for the detail item.
    
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}



#pragma mark - Text Field Delegate

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}


@end
