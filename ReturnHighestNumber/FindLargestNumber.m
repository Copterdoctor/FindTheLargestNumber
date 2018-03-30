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

    NSMutableArray *tempArray = [[NSMutableArray alloc]initWithObjects:@0, nil];

    //NS Sorting Method
//    NSSortDescriptor *sorter = [[NSSortDescriptor alloc]initWithKey:@"self" ascending:NO];
//    NSArray *sortedArray = [array sortedArrayUsingDescriptors:[NSArray arrayWithObject:sorter]];
//    NSNumber *n = [sortedArray objectAtIndex:0];
    
    //For loop method
    for (int i = 0; i < [array count]; i++) {
        if (array[i] > tempArray[0])
            [tempArray replaceObjectAtIndex:0 withObject:array[i]];
    }
    
    //Fast Enumeration of array
//    for (NSNumber *i in array){
//        if (i > tempArray[0])
//            [tempArray replaceObjectAtIndex:0 withObject:i];
//    }
    return tempArray[0];
}

@end
