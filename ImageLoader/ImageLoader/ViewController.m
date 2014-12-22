//
//  ViewController.m
//  ImageLoader
//
//  Created by John Boyd on 4/15/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "ViewController.h"
#define kGalaxyURL @"http://www.spacetelescope.org/static/archives/images/large/opo0328a.jpg"

@interface ViewController ()

@end

@implementation ViewController

- (void) showDownloadProgress: (BOOL) downloading {
    float downloadingViewsAlpha = downloading ? 1 : 0;
    float otherViewsAlpha = downloading ? 0 : 1;
    
    // downloading views
    self.ProgressView.alpha = downloadingViewsAlpha;
    self.activityIndicator.alpha = downloadingViewsAlpha;
    self.Label.alpha = downloadingViewsAlpha;
    
    // others
    self.imageView.alpha = otherViewsAlpha;
    
    // spin the wheel..
    if (downloading) {
        [self.activityIndicator startAnimating];
        [self.startButton setTitle: @"Cancel" forState: UIControlStateNormal];
    } else {
        [self.activityIndicator stopAnimating];
        [self.startButton setTitle: @"Start" forState: UIControlStateNormal];
    }
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.downloadInProgress=NO;
    [self showDownloadProgress: NO];
    self.startButton.alpha=1;
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)buttonClicked:(id)sender {
    self.downloadInProgress = !self.downloadInProgress;
    
    if (self.downloadInProgress) {
        //start the download
        NSURLSession* s;
        //NSURLSessionDataTask *t;
        NSURL *url = [ NSURL URLWithString: kGalaxyURL ];
        NSURLSessionConfiguration *c = [NSURLSessionConfiguration defaultSessionConfiguration];
        
    
        // Get a handle to the share session object
        s = [NSURLSession sessionWithConfiguration: c delegate: self delegateQueue: nil];

        // creatd the task object
        self.task = [s dataTaskWithURL: url];
        
        // start the action
        [self.task resume];
        
    } else {
        [self.task cancel];
        self.task = nil;
    }
    
    [self showDownloadProgress: self.downloadInProgress];
}


# pragma mark - Data Task Delegate

- (void) URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveResponse:(NSURLResponse *)response completionHandler:(void (^)(NSURLSessionResponseDisposition))completionHandler {
    // the response above is where all the action is for progress
    
    NSLog(@"did receive response...");
    
    self.data = [NSMutableData data];
    
    completionHandler(NSURLSessionResponseAllow);
}


- (void) URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveData:(NSData *)data {
    NSLog(@"did receive data: %d", data.length);
    [self.data appendData: data];
}

- (void) URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error {
    NSLog(@"Did complete...");
    
    UIImage *image = [UIImage imageWithData: self.data];
    self.imageView.image = image;
    
    self.downloadInProgress = NO;
    [self showDownloadProgress: NO];
}
@end
