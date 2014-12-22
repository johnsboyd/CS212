//
//  DetailViewController.m
//  AnimalTableII
//
//  Created by john on 3/20/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@end

@implementation DetailViewController

#pragma mark - Managing the detail item



- (void)viewDidLoad
{
    [super viewDidLoad];
    self.detailDescriptionLabel.text = [self.detailItem description];
    self.detailDescrImage.image = self.imageName;

}

@end
