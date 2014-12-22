//
//  ViewController.m
//  GalaxyDownload
//
//  Created by jschatz on 4/15/14.
//  Copyright (c) 2014 jschatz. All rights reserved.
//

#import "ViewController.h"

//#define kGalaxyURL @"http://www.spacetelescope.org/static/archives/images/large/opo0328a.jpg"
#define kGalaxyURL @"http://upload.wikimedia.org/wikipedia/commons/c/c3/NGC_4414_%28NASA-med%29.jpg"

//#define kGalaxyURL @"http://astro.physics.uiowa.edu/~www/_Media/galacticcenter_greatobs_big.jpeg"

@interface ViewController ()

@end

@implementation ViewController

- (void) showDownloadProgress: (BOOL) downloading {
    float downloadingViewsAlpha = downloading ? 1 : 0;
    float otherViewsAlpha = downloading ? 0 : 1;
    
    // Downloading views
    self.progressView.alpha = downloadingViewsAlpha;
    self.activityIndicator.alpha = downloadingViewsAlpha;
    self.label.alpha = downloadingViewsAlpha;
    
    // Others
    self.imageView.alpha = otherViewsAlpha;
    
    // Sping the wheel, set the button text...
    if (downloading) {
        [self.activityIndicator startAnimating];
        [self.startButton setTitle: @"Cancel" forState: UIControlStateNormal];
    } else {
        [self.activityIndicator stopAnimating];
        [self.startButton setTitle: @"Start" forState: UIControlStateNormal];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.downloadInProgress = NO;
    [self showDownloadProgress: NO];
}

- (IBAction)buttonClicked:(UIButton *)sender {
    self.downloadInProgress = !self.downloadInProgress;
    
    if (self.downloadInProgress) {
        // Start the download
        NSURLSession* s;
        NSURL *url = [NSURL URLWithString: kGalaxyURL];
        NSURLSessionConfiguration *c = [NSURLSessionConfiguration defaultSessionConfiguration];
 
        // Get a handle to the shared session object
        s = [NSURLSession sessionWithConfiguration: c delegate: self delegateQueue: nil];
        
        // create the task object
        self.task = [s dataTaskWithURL: url];
        
        // start the action
        [self.task resume];
        
    } else {
        [self.task cancel];
        self.task = nil;
    }
    
    [self showDownloadProgress: self.downloadInProgress];
}

# pragma mark helpers

- (void) updateProgress {
    self.progressView.progress = (float) self.data.length / (float) self.totalBytes;
    self.label.text = [NSString stringWithFormat: @"%.1f/%.1f Mb",(float) self.data.length / 1000000, (float) self.totalBytes / 1000000 ];
    
}


#pragma mark - Data Task Delegate

- (void) URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveResponse:(NSURLResponse *)response completionHandler:(void (^)(NSURLSessionResponseDisposition))completionHandler {
    
    
    self.totalBytes = [response expectedContentLength];
    NSLog(@"did receive response... %lli Mb", self.totalBytes );

    self.data = [NSMutableData data];
    
    
    
    completionHandler(NSURLSessionResponseAllow);
}

- (void) URLSession:(NSURLSession *)session dataTask:(NSURLSessionDataTask *)dataTask didReceiveData:(NSData *)data {
    //NSLog(@"did receive data: %d", data.length);
    [self performSelectorOnMainThread: @selector(updateProgress) withObject:self waitUntilDone: NO];
    [self.data appendData: data];
}

- (void) heavyLifting {
    int x =0;
    const int SIZE = 100000;
    
    for (int i = 0; i < SIZE; i++){
        for(int j = 0; j< SIZE/10; j++){
            x++;
        }
    }
}


- (void) imageDownloadComplete {
    
    NSOperationQueue *otherQueue = [[NSOperationQueue alloc] init];
    
    NSOperation *heavyLifting = [NSBlockOperation blockOperationWithBlock: ^{
    
    
    //dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
     
        //this invocation takes too long to perform on the main thread
        [self heavyLifting];
        self.image = [UIImage imageWithData: self.data];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            // when this is over, do this work on the main thread
            [self showDownloadProgress: NO];
            self.imageView.image = self.image;
        });
    //});
    }];
    
    [otherQueue addOperation: heavyLifting];
    
    
}


- (void) URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error {
    NSLog(@"Did complete...");
    
    
    [self performSelectorOnMainThread: @selector(imageDownloadComplete) withObject: nil waitUntilDone: NO];
    
    self.downloadInProgress = NO;
 
}


@end




























