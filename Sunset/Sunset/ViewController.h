//
//  ViewController.h
//  Sunset
//
//  Created by Jason Schatz on 11/30/12.
//  Copyright (c) 2012 Jason Schatz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSInteger counter;
}

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)buttonPressed:(id)sender;


@end
