//
//  ViewController.m
//  Sunset
//
//  Created by Jason Schatz on 11/30/12.
//  Copyright (c) 2012 Jason Schatz. All rights reserved.
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
    // Load the image (this should be done on another thread)
    UIImage *image = [UIImage imageNamed: [self nextImageName]];
    // Update the UI (this should be done on the main thread)
    self.imageView.image = image;
    /***
     *
     * Your Code Here
     *
     */
}

// Returns the image the file name for the next image that should be loaded

- (NSString*) nextImageName {
    counter = (counter + 1) % kImageCount;
    return [NSString stringWithFormat: @"%@-%i.jpg", kImageRootName, counter];
}

// Invoke this method to slow things down for a bit

- (void) heavyLifting {
    NSInteger x;
    
    for (int i = 0; i < 500000000; i++) x = i + i;
    
    x = 0;
}

@end
