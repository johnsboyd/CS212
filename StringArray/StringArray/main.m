//
//  main.m
//  StringArray
//
//  Created by John Boyd on 1/14/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString* stringFromSTDIn() {
    char buffer[1000];
    scanf("%999s", buffer);
    
    return [[NSString alloc] init];
}

int main(int argc, const char * argv[])
{

    
    
    NSMutableArray *a = [[NSMutableArray alloc]init];
    NSString *s;
    NSMutableArray *unique = [[NSMutableArray alloc]init];
    
    NSArray *music = [[NSArray alloc]initWithObjects:@"rock",@"rap", nil];
    
    [a addObject:@"red"];
    [a addObject:@"yellow"];
    [a addObject:@"green"];
    
    NSLog(@"this is some bullshit %@", a[0]);
    do {
        s = stringFromSTDIn();
        [a addObject: s];
    } while (![s isEqualToString:@"done"]);
    
    for (int i = 0; i < [a count]; i++){
        NSInteger count = 0;
        NSString *currentString = (NSString*)[ a objectAtIndex: i];
    
        for (int j=0; j < [a count]; j++) {
            if ([currentString isEqualToString: [a objectAtIndex:j]])
                count++;
        }
        
    }
    
    //if (count == 1 ){
    //    [unique addObject: currentString];
    //}





}
