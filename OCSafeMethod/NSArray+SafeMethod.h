//
//  NSArray+SafeMethod.h
//  OCSafeMethod
//
//  Created by 念纪 on 16/3/25.
//  Copyright © 2016年 cnbluebox. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (SafeMethod)

- (NSDictionary *)dictionaryAtIndex:(NSUInteger)index;
- (NSArray *)arrayAtIndex:(NSUInteger)index;

- (NSString *)stringAtIndex:(NSUInteger)index;
- (NSString *)stringAtIndex:(NSUInteger)index defaultValue:(NSString *)defaultValue;

- (NSNumber *)numberAtIndex:(NSUInteger)index;
- (NSNumber *)numberAtIndex:(NSUInteger)index defaultValue:(NSNumber *)defaultValue;

- (BOOL)boolAtIndex:(NSUInteger)index;
- (int)intAtIndex:(NSUInteger)index;
- (unsigned int)unsignedIntAtIndex:(NSUInteger)index;

- (long)longAtIndex:(NSUInteger)index;
- (unsigned long)unsignedLongAtIndex:(NSUInteger)index;
- (long long)longLongAtIndex:(NSUInteger)index;
- (unsigned long long)unsignedLongLongAtIndex:(NSUInteger)index;
- (NSInteger)integerAtIndex:(NSUInteger)index;
- (NSUInteger)unsignedIntegerAtIndex:(NSUInteger)index;

- (float)floatAtIndex:(NSUInteger)index;
- (double)doubleAtIndex:(NSUInteger)index;

@end

@interface NSMutableArray (SafeMethod)

- (void)safeInsertObject:(id)object atIndex:(NSUInteger)index;
- (void)safeAddObject:(id)object;
- (void)safeRemoveObjectAtIndex:(NSUInteger)index;

@end
