//
//  FindLargestNumber.m
//  ReturnHighestNumber
//
//  Created by Jordan Anders on 2018-03-14.
//  Copyright © 2018 Jordan Anders. All rights reserved.
//

#import "FindLargestNumber.h"

@implementation FindLargestNumber

-(NSNumber*) largestNumberInArray: array{

    NSSortDescriptor *sorter = [[NSSortDescriptor alloc]initWithKey:@"self" ascending:NO];
    NSArray *sortedArray = [array sortedArrayUsingDescriptors:[NSArray arrayWithObject:sorter]];
    NSNumber *n = [sortedArray objectAtIndex:0];
    
    return n;
}

@end
