//
//  GameView.h
//  seq
//
//  Created by John Boyd on 4/25/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface GameView : SKScene

@property (nonatomic,strong) SKSpriteNode *strobe;
@property (nonatomic,strong) SKSpriteNode *sprite;
@property NSTimeInterval lastUpdate;
@property CGFloat xVelocity;


@end
