//
//  ViewController.m
//  SunsetQ
//
//  Created by John Boyd on 4/27/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "ViewController.h"

#define kImageRootName @"sunset"
#define kImageCount 10

@interface ViewController (Private)
- (NSString*) nextImageName;
- (void) heavyLifting;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
    self.activityIndicator.alpha = 0;
    self.imageView.alpha = 0;
    counter = 0;
}

- (IBAction)buttonPressed:(id)sender {

    self.imageView.alpha = 0;
    self.activityIndicator.alpha = 1;
    [self.activityIndicator startAnimating];
    self.button.alpha = .6;
    self.button.enabled = NO;

    NSOperationQueue *otherQueue = [[NSOperationQueue alloc] init];
    
    NSOperation *heavyLifting = [NSBlockOperation blockOperationWithBlock: ^{
        [self heavyLifting];
        // Load the image (this should be done on another thread)
        UIImage *image = [UIImage imageNamed: [self nextImageName]];
        
        dispatch_async(dispatch_get_main_queue(), ^{

            // Update the UI (this should be done on the main thread)
            
            self.button.alpha = 1;
            self.button.enabled = YES;
            self.activityIndicator.alpha = 0;
            [self.activityIndicator stopAnimating];
            self.imageView.image = image;
            self.imageView.alpha = 1;
        });
    }];
    [otherQueue addOperation: heavyLifting];
}

// Returns the image the file name for the next image that should be loaded

- (NSString*) nextImageName {
    counter = (counter + 1) % kImageCount;
    //NSLog(@"%@-%i.jpg", kImageRootName, counter);
    return [NSString stringWithFormat: @"%@-%i.jpg", kImageRootName, counter];
}

// Invoke this method to slow things down for a bit

- (void) heavyLifting {
    NSInteger x;
    
    for (int i = 0; i < 500000000; i++) x = i + i;
    
    x = 0;
}

@end
