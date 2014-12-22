//
//  ViewController.m
//  PlistReader
//
//  Created by John Boyd on 3/25/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#define PLIST  @"data.plist"

- (void)viewDidLoad{
    // Get the documents dir
    NSURL *documentsURL = [[[NSFileManager defaultManager]
                            URLsForDirectory: NSDocumentDirectory
                            inDomains: NSUserDomainMask] lastObject];

    // Get the plist url
    NSURL *plistURL = [documentsURL URLByAppendingPathComponent: PLIST];
    
    //try to create the array. nil if the plist doesn't exist (1st execution)
    NSMutableArray *a = [NSKeyedUnarchiver unarchiveObjectWithFile: plistURL.path];
    
    // if the array is nil then create than empty array
    if (a==nil) {
        a = [NSMutableArray array];
        NSLog(@"creating empty array...");
    } else {
        NSLog(@"unarchived array. count: %d...", a.count);
    }
    
    // add a string to the array on each execution
    [a addObject: @"another string..."];
    
    // rearchive the array
    [NSKeyedArchiver archiveRootObject: a toFile:plistURL.path];
    
    
    /*
    NSURL *url = [[NSBundle mainBundle] URLForResource: @"cities" withExtension: @"plist"];
    
    NSLog(@"url: %@", url);
   
    NSArray *cities = [NSArray arrayWithContentsOfURL: url];

    NSLog(@"Loaded cities array. %d entries.", cities.count);
    
    for (NSString *s in cities) {
        NSLog(@"%@",s);
    }
    */
    
	[super viewDidLoad];
}


@end
