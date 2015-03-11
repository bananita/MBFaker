//
//  MBFakerDate.h
//  Faker
//
//  Created by Daniel Chong on 11/03/15.
//  Copyright (c) 2015 Michał Banasiak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFakerDate : NSObject

+ (NSDate*)between:(NSDate*)from to:(NSDate*)to;
+ (NSDate*)forward;
+ (NSDate*)forward:(NSUInteger)days;
+ (NSDate*)backward;
+ (NSDate*)backward:(NSUInteger)days;
+ (NSDate*)birthday;
+ (NSDate*)birthdayFromAge:(NSUInteger)fromAge toAge:(NSUInteger)toAge;

// Helper method to get date string
+ (NSString *) dateString:(NSDate*) date;

@end
