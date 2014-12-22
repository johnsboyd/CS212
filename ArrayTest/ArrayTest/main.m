//
//  main.m
//  ArrayTest


#import <Foundation/Foundation.h>



int main(int argc, const char * argv[])
{
    NSMutableArray *a;
    
    a = [[NSMutableArray alloc] init];
    
    [a addObject: @"Red"];
    [a addObject: @"Green"];
    [a addObject: @"Yellow"];
    
    NSLog(@"%@", a[1]);
    
    /* for (int i = 0; i < [a count]; i++) {
        NSLog(@"%@", [a objectAtIndex: i]);
    }
    
    //NSLog(@"the first color is %@", [a objectAtIndex: 0]);
    
    //NSLog(@"Done");
     */
    
    

}

