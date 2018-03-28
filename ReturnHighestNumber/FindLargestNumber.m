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

//    //NS Sorting Method
//    NSSortDescriptor *sorter = [[NSSortDescriptor alloc]initWithKey:@"self" ascending:NO];
//    NSArray *sortedArray = [array sortedArrayUsingDescriptors:[NSArray arrayWithObject:sorter]];
//    NSNumber *n = [sortedArray objectAtIndex:0];
    
//    Jordans manual method
    NSMutableArray *tempArray = [[NSMutableArray alloc]initWithObjects:@0, nil];
    
    for (int i = 0; i < [array count]; i++) {
        if (array[i] > tempArray[0])
            [tempArray replaceObjectAtIndex:0 withObject:array[i]];
    }
    return tempArray[0];
}

@end
