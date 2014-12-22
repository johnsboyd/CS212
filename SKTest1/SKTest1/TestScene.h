//
//  TestScene.h
//  SKTest1
//
//  Created by John Boyd on 4/8/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface TestScene : SKScene

@property (nonatomic,strong) SKSpriteNode *bat;
@property (nonatomic,strong) SKSpriteNode *stone;
@property (nonatomic,strong) SKSpriteNode *ball;

@property NSTimeInterval lastUpdate;
@property CGFloat xVelocity;
@property CGFloat yVelocity;

@end
