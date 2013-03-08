//
//  NSArray+Utilities.m
//  InterplayCentral
//
//  Created by mhontar on 6/12/12.
//  Copyright (c) 2012 AVID. All rights reserved.
//

#import "NSArray+Utilities.h"
#import "Logging.h"

@implementation NSArray (Utilities)

- (id) firstObject{
    if ([self count] > 0){
        return [self objectAtIndex:0];
    }
    return nil;
}

@end
