//
//  main.m
//  chap3
//
//  Created by John Boyd on 1/19/14.
//  Copyright (c) 2014 John Boyd. All rights reserved.
//

// Program to work with fractions – class version #import <Foundation/Foundation.h>
//---- @interface section ----
@interface Fraction: NSObject
-(void) print;
-(void) setNumerator: (int) n; -(void) setDenominator: (int) d;
@end
//---- @implementation section ----
@implementation Fraction {
    int numerator;
    int denominator; }
-(void) print {
    NSLog (@"%i/%i", numerator, denominator); }
-(void) setNumerator: (int) n {
    numerator = n; }
-(void) setDenominator: (int) d {
    denominator = d; }
@end
//---- program section ----
int main (int argc, char * argv[]) {
    @autoreleasepool { //Fraction *myFraction;
        // Create an instance of a Fraction
        Fraction *frac1 = [[Fraction alloc] init];
        Fraction *frac2 = [[Fraction alloc] init];
        // Set fraction to 1/3
        [frac1 setNumerator: 2]; [frac1 setDenominator: 3];
        [frac2 setNumerator: 3]; [frac2 setDenominator: 7];
        // Display the fraction using the print method
        NSLog (@"First fraction is:"); [frac1 print];
        NSLog (@"Second fraction is:"); [frac2 print];
        }
        return 0;
}

