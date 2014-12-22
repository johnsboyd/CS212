//
//  ViewController.h
//  GalaxyDownload
//
//  Created by jschatz on 4/15/14.
//  Copyright (c) 2014 jschatz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLSessionDataDelegate>

@property (nonatomic, strong) NSMutableData *data;
@property (assign) BOOL downloadInProgress;
@property (nonatomic, weak) NSURLSessionDataTask *task;
@property (assign) long long  totalBytes;
@property (nonatomic, strong) UIImage *image;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

- (IBAction)buttonClicked:(UIButton *)sender;

- (void) showDownloadProgress: (BOOL) downloading;

@end
