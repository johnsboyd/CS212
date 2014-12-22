//
//  main.m
//  NumberGuesserClass
//
//  Created by John Boyd on 1/30/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "NumberGuesser.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        char c;
        NumberGuesser *guesser = [[NumberGuesser alloc] initWithLowerBound: 1 upperBound: 100];
        NSLog(@"Think of a number between 1 and 100, then hit <enter>");
        scanf("%c", &c);
        NSLog(@"The guess is %ld",(long) [guesser guess] );
        
        while ( c!='c'){
            NSLog(@"Enter (h)igher (l)ower (c)orrect or (r)estart: ");
            scanf(" %c", &c);
            if ( c=='h') {
                NSLog(@"(Too low)");
                [ guesser guessHigher];
                NSLog(@"The guess is %ld",(long) [guesser guess] );
            }
            if ( c=='l') {
                NSLog(@"(Too high)");
                [ guesser guessLower];
                NSLog(@"The guess is %ld",(long) [guesser guess] );
            }
            if ( c=='r') {
                [ guesser reset ];
                NSLog(@"Think of a number between 1 and 100, then hit <enter>");
                scanf("%c", &c);
                scanf("%c", &c);
                NSLog(@"The guess is %ld",(long) [guesser guess] );
            }
            
        }
        NSLog(@"Correct! It took %ld guesses", (long) guesser.guessCount );
    }
    return 0;
}

