//
//  TestScene.m
//  SKTest1
//
//  Created by John Boyd on 4/8/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "TestScene.h"

@implementation TestScene

- (id) initWithSize:(CGSize)size {
    self = [super initWithSize: size];
    
    if (self) {
        NSLog(@"TestScene - initWithSize...");
        // create the stone
        self.stone = [[SKSpriteNode alloc] initWithColor: [UIColor redColor] size: CGSizeMake( 15, 15)];
        self.stone.position = CGPointMake(160, 400);
        self.stone.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize: self.stone.frame.size];
  
        
        // create the ball
        self.ball = [[SKSpriteNode alloc] initWithColor: [UIColor orangeColor] size: CGSizeMake( 20, 20)];
        self.xVelocity = 200;
        self.yVelocity = 200;
        
        // create the bat
        self.bat = [SKSpriteNode spriteNodeWithColor: [UIColor orangeColor] size: CGSizeMake( 80, 20)];
        
        self.bat.position = CGPointMake(140, 60);
        self.bat.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize: self.bat.frame.size];
        self.bat.physicsBody.dynamic = NO;
        
        self.lastUpdate = -1;
        
        // create the bat & ball
        [self addChild: self.bat];
        [self addChild: self.ball];
        [self addChild: self.stone];
        
        // add some repeating action
        SKAction *pulse = [SKAction repeatActionForever:
                            [SKAction sequence: @[
                            [SKAction  scaleBy: 2.0 duration: 0.1],
                            [SKAction scaleBy: 0.5 duration: 0.1]]]
        ];
    [self.ball runAction:pulse];
    }
    return self;
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touches began...");
    SKAction *moveBat;
    UITouch *touch = [touches anyObject];
    CGFloat touchX = [touch locationInNode: self].x;
    moveBat = [SKAction moveToX: touchX duration: 0.1];
    [self.bat runAction: moveBat];
}


- (void) update:(NSTimeInterval)currentTime {
    [super update: currentTime];
    
    CGFloat elapsedTime;
    
    if(self.lastUpdate < 0 ) {
        self.lastUpdate = currentTime;
    }
    
    CGPoint p = self.ball.position;
    
    // CHeck for walls...
    if (self.xVelocity > 0 && p.x > self.size.width)
        self.xVelocity *= -1;
    else if (self.xVelocity < 0 && p.x < 0)
        self.xVelocity *= -1;
    else if (self.yVelocity > 0 && p.y > self.size.height)
        self.yVelocity *= -1;
    else if (self.yVelocity < 0 && p.y < 0 )
        self.yVelocity *= -1;
    
    // Check for bat collision
    
    if (CGRectIntersectsRect(self.bat.frame, self.ball.frame) &&
        self.yVelocity < 0) {
        self.yVelocity *= -1;
    }
        
    
    
    // Update the position...
    
    elapsedTime = currentTime - self.lastUpdate;
    self.lastUpdate = currentTime;
    
    
    NSInteger dx = elapsedTime * self.xVelocity;
    NSInteger dy = elapsedTime * self.yVelocity;

    
    
    self.ball.position = CGPointMake(p.x + dx, p.y + dy);
    NSLog(@"%ld", (long)dx );
}

@end
