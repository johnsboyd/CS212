//
//  DetailViewController.h
//  MasterDetail
//
//  Created by jboyd on 3/18/14.
//  Copyright (c) 2014 jboyd. All rights reserved.
//

//  Created by John Boyd on 4/5/14.


#import <UIKit/UIKit.h>

@class DateItem;

@interface DetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) DateItem* item;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

