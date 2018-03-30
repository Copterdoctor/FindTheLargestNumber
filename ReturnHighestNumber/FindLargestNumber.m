//
//  FindLargestNumber.m
//  ReturnHighestNumber
//
//  Created by Jordan Anders on 2018-03-14.
//  Copyright © 2018 Jordan Anders. All rights reserved.
//

#import "FindLargestNumber.h"

@implementation FindLargestNumber

+(NSNumber*) largestNumberInArray: (NSArray *) array{

    //NS Sorting Method
//    NSMutableArray *tempArray = [[NSMutableArray alloc]initWithObjects:@0, nil];
//    NSSortDescriptor *sorter = [[NSSortDescriptor alloc]initWithKey:@"self" ascending:NO];
//    NSArray *sortedArray = [array sortedArrayUsingDescriptors:[NSArray arrayWithObject:sorter]];
//    NSNumber *n = [sortedArray objectAtIndex:0];
    
    NSNumber *highestNumber = 0;
    //For loop method
//    for (int i = 0; i < [array count]; i++) {
//        if (array[i] > highestNumber){
//            highestNumber = array[i];
//        }
//
//    }
    
    //Fast Enumeration of array
    for (NSNumber *i in array){
        if (i > highestNumber){
            highestNumber = i;
            
        }
    }
    return highestNumber;
}

@end
