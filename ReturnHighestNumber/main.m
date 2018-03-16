//
//  main.m
//  ReturnHighestNumber
//
//  Created by Jordan Anders on 2018-03-14.
//  Copyright © 2018 Jordan Anders. All rights reserved.
//
//Assignment 4: Find the Largest Number in an Array
//
//Write a method that finds the highest number in an unsorted array and returns it. It should work for any array of numbers being passed in ex) @[@3, @7, @6, @8] or @[@44, @5, @6]


#import <Foundation/Foundation.h>
#import "FindLargestNumber.h"
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Creating a random array < 100 objects with random numbers < 1,000,000,000 in value
        NSMutableArray *randomArray = [[NSMutableArray alloc]init];
        int randomLengthOfArray = arc4random_uniform(100);
        for (int i = 0; i < randomLengthOfArray; i++) {
            int n = arc4random_uniform(1000000000);
            [randomArray addObject:[NSNumber numberWithInt:n]];
        }
        NSLog(@"The length of this array is %ld",[randomArray count]);
        NSLog(@"%@",randomArray);
        
        //Create object from custom class FindLargestNumber
        //TODO Init object with highest number instead of having to call with function
        FindLargestNumber *x = [[FindLargestNumber alloc]init];
        
        //NSLog highest number from array passed to function largestNumberInArray
        NSLog(@"The largest number in this array is %@",[x largestNumberInArray:randomArray]);
        
    }
    return 0;
}
