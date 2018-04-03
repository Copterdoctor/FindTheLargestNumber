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
//    NS Sorting Method
//        NSMutableArray *tempArray = [[NSMutableArray alloc]initWithObjects:@0, nil];
//        NSSortDescriptor *sorter = [[NSSortDescriptor alloc]initWithKey:@"self" ascending:NO];
//        NSArray *sortedArray = [array sortedArrayUsingDescriptors:[NSArray arrayWithObject:sorter]];
//        NSNumber *highestNumber = [sortedArray objectAtIndex:0];
    
//    Fast Enumeration of array
    NSNumber *highestNSNumber = 0;
    for (NSNumber *i in array){
        if ([highestNSNumber compare:i] != NSOrderedDescending) {
            highestNSNumber = i;
        }
    }
    return highestNSNumber;
}
@end
