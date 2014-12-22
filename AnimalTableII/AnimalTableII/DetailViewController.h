//
//  DetailViewController.h
//  AnimalTableII
//
//  Created by john on 3/20/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) id imageName;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *detailDescrImage;



@end
