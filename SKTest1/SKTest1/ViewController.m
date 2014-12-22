//
//  ViewController.m
//  SKTest1
//
//  Created by John Boyd on 4/8/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "ViewController.h"
#import <SpriteKit/SpriteKit.h>
#import "TestScene.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    SKView *spriteView = (SKView*) self.view;
    
    spriteView.showsFPS = YES;
    
    TestScene *scene = [[TestScene alloc] initWithSize: spriteView.bounds.size];
    
    
    [spriteView presentScene: scene];
    
}


@end
