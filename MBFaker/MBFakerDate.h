//
//  MBFakerDate.h
//  Faker
//
//  Created by Daniel Chong on 11/03/15.
//  Copyright (c) 2015 Michał Banasiak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFakerDate : NSObject

+ (NSDateComponents*)between:(NSDate*)from to:(NSDate*)to;
+ (NSDateComponents*)forward;
+ (NSDateComponents*)forward:(NSUInteger)days;
+ (NSDateComponents*)backward;
+ (NSDateComponents*)backward:(NSUInteger)days;
+ (NSDateComponents*)birthday;
+ (NSDateComponents*)birthdayFromAge:(NSUInteger)fromAge toAge:(NSUInteger)toAge;

// Helper method to get date string
+ (NSString *) dateString:(NSDateComponents*) date;

@end
