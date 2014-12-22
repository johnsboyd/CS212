//
//  MovieModel.h
//  MoviePicker
//


#import <Foundation/Foundation.h>

@interface MovieModel : NSObject {
    NSMutableArray *actors;
    NSMutableArray *movies;
}

+ (instancetype) model;


- (NSString*) actorForIndex: (NSInteger) index;
- (NSString*) movieForIndex: (NSInteger) index;

- (NSInteger) count;

- (void) addMovie: (NSString*) movieTitle withActor: (NSString*) actorName;

@end