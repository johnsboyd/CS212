

#import <Foundation/Foundation.h>


// A helper function for reading strings from stdin
NSString* stringFromSTDIn() {
    char buffer[1000];
    scanf("%999s", buffer);
    
    return [[NSString alloc] initWithUTF8String: buffer];
}

/**
 * This program reads in srings from the keyboard,
 * and then prints out the strings that only show up once, 
 * the "unique" strings. 
 */

int main(int argc, const char * argv[])
{
    
    NSMutableArray *a;
    NSMutableArray *unique;
    NSString *s;
   
    a = [[NSMutableArray alloc] init];
    unique = [[NSMutableArray alloc] init];
    
    // Prompt the user
    NSLog(@"Enter some strings. Enter \"done\" when you are done.");

    // Read in strings from the user, until the user enters
    // the string "done"
    do {
        s = stringFromSTDIn();
        [a addObject: s];
    } while (![s isEqualToString: @"done"]);
    
    // Find the unique elements in a, put them in unique
    // Loop through all of the strings
    
    for (int i = 0; i < [a count]; i++) {
        
        NSInteger matchCount = 0;
        NSString *currentString = (NSString*)[a objectAtIndex: i];

        // for each string, figure out how many times does
        // the string shows up in a
        for (int j = 0; j < [a count]; j++) {
            if ([currentString isEqualToString: [a objectAtIndex:j]]) {
                matchCount++;
            }
        }
        
        // if the match count is 1, it is unique (it matches with itself)
        if (matchCount == 1) {
            [unique addObject: currentString];
        }
    }
    
    // Print out the contents of unique
    
    for (int i = 0; i < [unique count]; i++) {
        NSLog(@"%@", [unique objectAtIndex: i]);
    }
}

