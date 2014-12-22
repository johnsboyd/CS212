//
//  GameView.m
//  seq
//
//  Created by John Boyd on 4/25/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import "GameView.h"

@interface GameView ()

@property BOOL initialized;

@end

@implementation GameView {
    NSInteger _togglestate[16][12];
}

-(void) didMoveToView:(SKView *)view {
    if(!self.initialized){
        
        for (int i=0; i<12; i++){
            for (int j=0; j<16; j++){
                [self createCirc: CGPointMake(j*26+13, i*26+13): @"OFF" ];
                _togglestate[j][i] = 0;
            }
        }
        
        [self createLine: CGPointMake(0,152)];
        self.lastUpdate = -1;
        
        self.initialized = YES;
    }
}

-(void) createCirc: (CGPoint) coord :(NSString*) status {
    SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed: status];
    //sprite.name = [NSString stringWithFormat: @"sprite%i", num];
    sprite.name = @"sprite";
    sprite.zPosition = 1;
    sprite.position = coord;
    sprite.size = CGSizeMake(26, 26);
    //NSLog(@"%f,%f", self.frame.size.width, self.frame.size.height);
    //NSLog(@"%@",sprite.name);
    [self addChild:sprite];
}

-(void) createLine: (CGPoint) col {
    self.strobe = [[SKSpriteNode alloc] initWithColor: [UIColor orangeColor] size: CGSizeMake( 1, self.frame.size.height )];
    self.xVelocity = 100;
    self.strobe.name = @"strobe";
    self.strobe.zPosition = 2;
    self.strobe.position = col;
    
    [self addChild:self.strobe];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UITouch *touch in touches) {
        CGPoint touchLocation = [touch locationInNode:self];
        int i = touchLocation.y/26;
        int j = touchLocation.x/26;
        if (_togglestate[j][i] == 0) {
            [self createCirc: CGPointMake(j*26+13, i*26+13): @"ON" ];
            _togglestate[j][i] = 1;
        } else {
            [self createCirc: CGPointMake(j*26+13, i*26+13): @"OFF" ];
            _togglestate[j][i] = 0;
        }
        

    }
}

- (void) update:(NSTimeInterval)currentTime {
    [super update: currentTime];
    
    CGFloat elapsedTime;
    
    CGPoint p = self.strobe.position;
    
    if(self.lastUpdate < 0 ) {
        self.lastUpdate = currentTime;
    }
    

    // Update the position...
    // play sounds in here somewhere
    
    elapsedTime = currentTime - self.lastUpdate;
    self.lastUpdate = currentTime;
    
    NSInteger dx = elapsedTime * self.xVelocity;

    self.strobe.position = CGPointMake(p.x + dx, 152);
    
    if ( p.x + dx > 415){
        self.strobe.position = CGPointMake( (NSInteger) (p.x +dx) % 415, 152);
    }

}
    


@end
