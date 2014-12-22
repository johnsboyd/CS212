//
//  MovieModel.m
//  MovieStarPickers
//
//  Created by Jason Schatz on 10/17/12.
//  Copyright (c) 2012 Jason Schatz. All rights reserved.
//

#import "MovieModel.h"

@implementation MovieModel

- (id) init {
    self = [super init];
    
    if (self) {
        actors = [NSMutableArray array];
        movies = [NSMutableArray array];
        
        [self addMovie: @"Chariots of Fire" withActor: @"Ian Holm"];
        [self addMovie: @"Back to the Future" withActor: @"Lea Thompson"];
        [self addMovie: @"Ghostbusters" withActor: @"Bill Murray"];
        [self addMovie: @"Out of Africa" withActor: @"Meryl Streep"];
        [self addMovie: @"Francis Ha" withActor: @"Greta Gerwig"];
    }
    
    return self;
}

- (NSInteger) count {
    // The count will be identical, we could return either movies or actors.
    return movies.count;
}

- (NSString*) actorForIndex: (NSInteger) index {
    return [actors objectAtIndex: index];
}

- (NSString*) movieForIndex: (NSInteger) index {
    return [movies objectAtIndex: index];
}

- (void) addMovie: (NSString*) movieTitle withActor: (NSString*) actorName {
    // This line will throw an exception if our arrays get out of step
    NSAssert(actors.count == movies.count, @"The arrays are out of sync.");
    
    // Otherwise we can add another pair
    [movies addObject: movieTitle];
    [actors addObject: actorName];
}

@end
