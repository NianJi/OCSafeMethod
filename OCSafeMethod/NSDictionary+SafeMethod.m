//
//  NSDictionary+SafeMethod.m
//  OCSafeMethod
//
//  Created by 念纪 on 16/3/25.
//  Copyright © 2016年 cnbluebox. All rights reserved.
//

#import "NSDictionary+SafeMethod.h"

@implementation NSDictionary (SafeMethod)

- (NSDictionary *)dictionaryForKey:(id<NSCopying>)key
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSDictionary class]]) {
        return value;
    } else {
        return nil;
    }
}

- (NSArray *)arrayForKey:(id<NSCopying>)key
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSArray class]]) {
        return value;
    } else {
        return nil;
    }
}

- (NSString *)stringForKey:(id<NSCopying>)key
{
    return [self stringForKey:key defaultValue:nil];
}

- (NSString *)stringForKey:(id<NSCopying>)key defaultValue:(NSString *)defaultValue
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSString class]]) {
        return value;
    } else if ([value isKindOfClass:[NSNumber class]]) {
        return [value stringValue];
    } else if ([value isKindOfClass:[NSURL class]]) {
        return ((NSURL *)value).absoluteString;
    } else {
        return defaultValue;
    }
}

- (NSNumber *)numberForKey:(id<NSCopying>)key
{
    return [self numberForKey:key defaultValue:nil];
}

- (NSNumber *)numberForKey:(id<NSCopying>)key defaultValue:(NSNumber *)defaultValue
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]]) {
        return value;
    } else if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        return [formatter numberFromString:value];
    } else {
        return defaultValue;
    }
}

- (BOOL)boolForKey:(id<NSCopying>)key
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value boolValue];
    } else {
        return NO;
    }
}

- (int)intForKey:(id<NSCopying>)key
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value intValue];
    } else {
        return 0;
    }
}

- (unsigned int)unsignedIntForKey:(id<NSCopying>)key
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value unsignedIntValue];
    } else if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        return [[formatter numberFromString:value] unsignedIntValue];
    } else {
        return 0;
    }
}

- (long)longForKey:(id<NSCopying>)key
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value longValue];
    } else if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        return [[formatter numberFromString:value] longValue];
    } else {
        return 0;
    }
}

- (unsigned long)unsignedLongForKey:(id<NSCopying>)key
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value unsignedLongValue];
    } else if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        return [[formatter numberFromString:value] unsignedLongValue];
    } else {
        return 0;
    }
}

- (long long)longLongForKey:(id<NSCopying>)key
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value longLongValue];
    } else {
        return 0;
    }
}

- (unsigned long long)unsignedLongLongForKey:(id<NSCopying>)key
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value unsignedLongLongValue];
    } else if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        return [[formatter numberFromString:value] unsignedLongLongValue];
    } else {
        return 0;
    }
}

- (NSInteger)integerForKey:(id<NSCopying>)key
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value integerValue];
    } else {
        return 0;
    }
}

- (NSUInteger)unsignedIntegerForKey:(id<NSCopying>)key
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value unsignedIntegerValue];
    } else if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        return [[formatter numberFromString:value] unsignedIntegerValue];
    } else {
        return 0;
    }
}

- (float)floatForKey:(id<NSCopying>)key
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value floatValue];
    } else {
        return 0;
    }
}

- (double)doubleForKey:(id<NSCopying>)key
{
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value doubleValue];
    } else {
        return 0;
    }
}

- (void)safeSetObject:(id)anObject forKey:(id<NSCopying>)aKey
{
    if ([self isKindOfClass:[NSMutableDictionary class]] && nil != aKey && nil != anObject) {
        [(NSMutableDictionary *)self setObject:anObject forKey:aKey];
    }
}

#pragma mark - array functions

- (NSDictionary *)dictionaryAtIndex:(NSUInteger)index
{
    return nil;
}

- (NSArray *)arrayAtIndex:(NSUInteger)index
{
    return nil;
}

- (NSString *)stringAtIndex:(NSUInteger)index
{
    return nil;
}

- (NSString *)stringAtIndex:(NSUInteger)index defaultValue:(NSString *)defaultValue
{
    return nil;
}

- (NSNumber *)numberAtIndex:(NSUInteger)index
{
    return nil;
}

- (NSNumber *)numberAtIndex:(NSUInteger)index defaultValue:(NSNumber *)defaultValue
{
    return defaultValue;
}

- (BOOL)boolAtIndex:(NSUInteger)index
{
    return NO;
}

- (int)intAtIndex:(NSUInteger)index
{
    return 0;
}

- (unsigned int)unsignedIntAtIndex:(NSUInteger)index
{
    return 0;
}

- (long)longAtIndex:(NSUInteger)index
{
    return 0;
}

- (unsigned long)unsignedLongAtIndex:(NSUInteger)index
{
    return 0;
}

- (long long)longLongAtIndex:(NSUInteger)index
{
    return 0;
}

- (unsigned long long)unsignedLongLongAtIndex:(NSUInteger)index
{
    return 0;
}

- (NSInteger)integerAtIndex:(NSUInteger)index
{
    return 0;
}

- (NSUInteger)unsignedIntegerAtIndex:(NSUInteger)index
{
    return 0;
}

- (float)floatAtIndex:(NSUInteger)index
{
    return 0;
}

- (double)doubleAtIndex:(NSUInteger)index
{
    return 0;
}

- (void)safeInsertObject:(id)object atIndex:(NSUInteger)index
{
    
}

- (void)safeAddObject:(id)object
{
    
}

- (void)safeRemoveObjectAtIndex:(NSUInteger)index
{
    
}

@end
