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
        //Creating a random array 1 < n < 51 objects with random numbers <= 1,000 in value
        NSMutableArray *randomArray = [[NSMutableArray alloc]init];
        //+2 added because I don't want 0 or 1 to be a possible array length
        int randomLengthOfArray = arc4random_uniform(48)+2;
        for (int i = 0; i < randomLengthOfArray; i++) {
            int n = arc4random_uniform(1000) * -1;
            [randomArray addObject:[NSNumber numberWithInt:n]];
            int nn = arc4random_uniform(1000);
            [randomArray addObject:[NSNumber numberWithInt:nn]];
        }
        //NSLog of generated random array for confirmation and sorted for readability
        NSSortDescriptor *sorter = [[NSSortDescriptor alloc]initWithKey:@"self" ascending:YES];
        NSArray *sortedArray = [randomArray sortedArrayUsingDescriptors:[NSArray arrayWithObject:sorter]];
        NSLog(@"The length of this array is %ld",[randomArray count]);
        NSLog(@"%@",sortedArray);
        
        //NSLog highest number from array passed to method [FindLargestNumber largestNumberInArray: ]
        NSLog(@"The largest number in this array is %@",[FindLargestNumber largestNumberInArray:randomArray]);
        
    }
    return 0;
}
