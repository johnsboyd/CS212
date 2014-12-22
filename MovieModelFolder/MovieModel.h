//
//  MovieModel.h
//  MovieStarPickers
//
//  Created by Jason Schatz on 10/17/12.
//  Copyright (c) 2012 Jason Schatz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieModel : NSObject {
    NSMutableArray *actors;
    NSMutableArray *movies;
}

- (NSString*) actorForIndex: (NSInteger) index;
- (NSString*) movieForIndex: (NSInteger) index;

- (NSInteger) count;

- (void) addMovie: (NSString*) movieTitle withActor: (NSString*) actorName;

@end
