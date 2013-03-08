//
//  NSDictionary+Utils.m
//  Scarf-iOS
//
//  Created by Maksym Hontar on 12.09.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSDictionary+Utils.h"

@implementation NSDictionary (Utils)

- (NSArray*)getArrayValueForKey:(NSString*)key{
    NSArray *result = nil;
    if (self){
        id objId = [self objectForKey:key];
        if ([objId isKindOfClass:[NSArray class]])
            result = objId;
    }
    return result;
}

- (NSDictionary*)getDictionaryValueForKey:(NSString*)key{
    NSDictionary *result = nil;
    if (self){
        id objId = [self objectForKey:key];
        if ([objId isKindOfClass:[NSDictionary class]])
            result = objId;
    }
    return result;
}

- (NSString*)getStringValueForKey:(NSString*)key{
    NSString *result = @"";
    if (self){
        id objId = [self objectForKey:key];
        if ([objId isKindOfClass:[NSString class]]){
            result = objId;
        }else if ([objId isKindOfClass:[NSNull class]]){
            result = nil;
        }
    }
    return result;
}

- (BOOL)getBooleanValueForKey:(NSString*)key{
    BOOL result = NO;
    if (self){
        id objId = [self objectForKey:key];
        if ([objId isKindOfClass:[NSNumber class]]){
            result = [(NSNumber*)objId boolValue];
        }
    }
    return result;
}

- (unsigned long)getLongValueForKey:(NSString*)key{
    unsigned long result = 0;
    if (self){
        id objId = [self objectForKey:key];
        if ([objId isKindOfClass:[NSNumber class]]){
            result = [(NSNumber*)objId unsignedLongValue];
        }
    }
    return result;
}

- (int)getIntValueForKey:(NSString*)key{
    int result = 0;
    if (self){
        id objId = [self objectForKey:key];
        if ([objId isKindOfClass:[NSNumber class]]){
            result = [(NSNumber*)objId intValue];
        }
    }
    return result;
}

- (uint)getUIntValueForKey:(NSString*)key{
    uint result = 0;
    if (self){
        id objId = [self objectForKey:key];
        if ([objId isKindOfClass:[NSNumber class]]){
            result = [(NSNumber*)objId unsignedIntValue];
        }
    }
    return result;
}

- (float)getFloatValueForKey:(NSString*)key{
    float result = 0;
    if (self){
        id objId = [self objectForKey:key];
        if ([objId isKindOfClass:[NSNumber class]]){
            result = [(NSNumber*)objId floatValue];
        }
    }
    return result;
}
- (double)getDoubleValueForKey:(NSString*)key{
    double result = 0;
    if (self){
        id objId = [self objectForKey:key];
        if ([objId isKindOfClass:[NSNumber class]]){
            result = [(NSNumber*)objId doubleValue];
        }
    }
    return result;
}
@end

