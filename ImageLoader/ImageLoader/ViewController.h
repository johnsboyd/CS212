//
//  ViewController.h
//  ImageLoader
//
//  Created by John Boyd on 4/15/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLSessionDataDelegate>

@property (nonatomic, strong) NSMutableData *data;
@property (assign) BOOL downloadInProgress;
@property (nonatomic, weak) NSURLSessionDataTask *task;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIView *ProgressView;
@property (weak, nonatomic) IBOutlet UITextField *Label;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;


- (IBAction)buttonClicked:(id)sender;

-(void) showDownloadProgress:(BOOL) downloading;
@end
