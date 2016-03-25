//
//  NSDictionary+SafeMethod.h
//  OCSafeMethod
//
//  Created by 念纪 on 16/3/25.
//  Copyright © 2016年 cnbluebox. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (SafeMethod)

- (NSDictionary *)dictionaryForKey:(id<NSCopying>)key;
- (NSArray *)arrayForKey:(id<NSCopying>)key;

- (NSString *)stringForKey:(id<NSCopying>)key;
- (NSString *)stringForKey:(id<NSCopying>)key defaultValue:(NSString *)defaultValue;

- (NSNumber *)numberForKey:(id<NSCopying>)key;
- (NSNumber *)numberForKey:(id<NSCopying>)key defaultValue:(NSNumber *)defaultValue;

- (BOOL)boolForKey:(id<NSCopying>)key;
- (int)intForKey:(id<NSCopying>)key;
- (unsigned int)unsignedIntForKey:(id<NSCopying>)key;

- (long)longForKey:(id<NSCopying>)key;
- (unsigned long)unsignedLongForKey:(id<NSCopying>)key;
- (long long)longLongForKey:(id<NSCopying>)key;
- (unsigned long long)unsignedLongLongForKey:(id<NSCopying>)key;
- (NSInteger)integerForKey:(id<NSCopying>)key;
- (NSUInteger)unsignedIntegerForKey:(id<NSCopying>)key;

- (float)floatForKey:(id<NSCopying>)key;
- (double)doubleForKey:(id<NSCopying>)key;

@end

@interface NSMutableDictionary (SafeMethod)

- (void)safeSetObject:(id)anObject forKey:(id<NSCopying>)aKey;

@end
