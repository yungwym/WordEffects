//
//  main.m
//  WordEffects
//
//  Created by Alex Wymer  on 2017-06-26.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL GAMEON = YES;
        
        char inputChars[255];
        
        printf("Enter a string to add effects on: ");
        fgets(inputChars, 255, stdin);
        printf("Your string is %s\n", inputChars);
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        NSLog(@"Input was: %@", inputString);
        
        do {
            
            int userNum;
            
            NSLog(@"Choose an effect \n 1.Uppercase\n 2.Lowercase\n 3.Numberize\n 4.Canadianize\n 5.Respond\n 6.De-space\n 7.Find Length\n 8.Quit\n");
            
            scanf("%i", &userNum);
            NSLog(@"You choose: %i", userNum);
            
            
            switch (userNum) {
                    
                case 1:
                    NSLog(@"%@", inputString.uppercaseString);
                    break;
                    
                case 2:
                    NSLog(@"%@", inputString.lowercaseString);
                    break;
                    
                case 3:
                    NSLog(@"%d", inputString.intValue);
                    break;
                    
                case 4:
                    NSLog(@"%@", [inputString stringByAppendingString:@"eh?"]);
                    break;
                    
                case 5:
                    
                    if ([inputString containsString:@"?"]) {
                        NSLog(@"I Dont Know");
                    } else if ([inputString containsString:@"!"]) {
                        NSLog(@"Hey, Calm down man");
                    } else {
                        NSLog(@"Come back when you have something to say");
                    }
                    break;
                    
                case 6:
                    NSLog(@"%@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"_"]);
                    break;
                    
                case 7:
                    NSLog(@"%lu", (unsigned long)inputString.length);
                    break;
                    
                case 8:
                    NSLog(@"Bye bye");
                    GAMEON = NO;
                    break;
                    
                default:
                    break;
            }
            
        } while (GAMEON == YES);
        
    }
    return 0;
}
