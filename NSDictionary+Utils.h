//
//  NSDictionary+Utils.h
//  Scarf-iOS
//
//  Created by Maksym Hontar on 12.09.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Utils)

- (NSArray*)getArrayValueForKey:(NSString*)key;

- (NSDictionary*)getDictionaryValueForKey:(NSString*)key;

- (NSString*)getStringValueForKey:(NSString*)key;

- (BOOL)getBooleanValueForKey:(NSString*)key;

- (unsigned long)getLongValueForKey:(NSString*)key;

- (int)getIntValueForKey:(NSString*)key;
- (uint)getUIntValueForKey:(NSString*)key;

- (float)getFloatValueForKey:(NSString*)key;
- (double)getDoubleValueForKey:(NSString*)key;
@end
