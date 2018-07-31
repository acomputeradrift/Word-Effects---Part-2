//
//  main.m
//

//
//  Created by Jamie on 2018-07-30.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChars[255];//declare array
        char inputNum[255];
        
        
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);// get user input, limit input to max 255 characters
            
            while (true)
            {
            printf("Input a number: ");
                fgets(inputNum, 255, stdin);// get user input, limit input to max 255 characters
                int inputInt = atoi(inputNum);
                NSString *inputwithEnter = [NSString stringWithUTF8String:inputChars];
                NSString *inputString = [inputwithEnter stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            
            
      switch(inputInt)
                {
                    case 1:
                    {
                         //Uppercase
                        NSString *capitalString = inputString.uppercaseString;
                        NSLog (@"Capital:%@", capitalString);
                        break;
                    }
                       
                    case 2:
                    {
                        //Lowercase
                        
                        NSString *lowerString = inputString.lowercaseString;
                        NSLog (@"Lower:%@", lowerString);
                        break;
                    }
                        
                    case 3:
                    {
                        //Numberize
                        
                        NSInteger number = inputString.integerValue;
                        //number = number +42;
                        NSLog (@"Number:%ld", (long)number);
                         break;
                    }
                    case 4:
                    {
                        //Canadianize
                        if ([inputString hasSuffix:@"?"])
                        {
                            NSString *inputWithQuestion = [inputString stringByReplacingOccurrencesOfString:@"?" withString:@""];
                            NSString *canadianizedString = [inputWithQuestion stringByAppendingString:@", eh?"];
                            NSLog (@"Canadianized:%@", canadianizedString);
                        }
                        if ([inputString hasSuffix:@"!"])
                        {
                            NSString *inputWithExclamation = [inputString stringByReplacingOccurrencesOfString:@"!" withString:@""];
                            NSString *canadianizedString = [inputWithExclamation stringByAppendingString:@", eh?"];
                            NSLog (@"Canadianized:%@", canadianizedString);
                        }
                        else
                        {
                            NSString *canadianizedString = [inputString stringByAppendingString:@", eh?"];
                            NSLog (@"Canadianized:%@", canadianizedString);
                        }
                             break;
                        }
                    case 5:
                    {
                        //Respond
                        if ([inputString hasSuffix:@"!"])
                        {
                            NSLog(@"Whoah, calm down Tiger");
                            break;
                        }
                        if ([inputString hasSuffix:@"?"])
                        {
                            NSLog(@"I don't know");
                            break;
                        }
                        else{
                            NSLog(@"Number 5 is alive");
                        }
                         break;
                    }
                    case 6:
                    {
                        //De-Space-It
                        
                        
                        NSString *despaced = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                        NSLog(@"Despaced:%@", despaced);
                         break;
                    }
                }

            }
    }
    return 0;
}
