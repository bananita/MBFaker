//
//  MBFakerDate.m
//  Faker
//
//  Created by Daniel Chong on 11/03/15.
//  Copyright (c) 2015 Michał Banasiak. All rights reserved.
//

#import "MBFakerDate.h"

#define NUM_SECONDS_PER_DAY 86400

@interface MBFakerDate()

+ (NSDate*) dateAtMidnight:(NSDate*) inputDate;
+ (NSDate*) dateAtBeginningOfYear:(NSDate*) inputDate;

@end

@implementation MBFakerDate

// Public methods
+ (NSDate*)between:(NSDate*)from to:(NSDate*)to {
    NSDate *fromMidnight = [self dateAtMidnight:from];
    
    NSUInteger days = abs((to.timeIntervalSince1970 - from.timeIntervalSince1970) / NUM_SECONDS_PER_DAY);

    NSUInteger randomNumOfDays = arc4random() % days;
    
    NSDate *randomDate = [fromMidnight dateByAddingTimeInterval:randomNumOfDays * NUM_SECONDS_PER_DAY];
    
    return randomDate;
}

+ (NSDate*)forward {
    return [self forward:365];
}

+ (NSDate*)forward:(NSUInteger)days {
    
    NSDate *today = [self dateAtMidnight:[NSDate date]];
    
    if (days == 0) {
        return today;
    }
    
    NSInteger randomNumOfDays = arc4random() % days;
    
    NSDate *future = [today dateByAddingTimeInterval:randomNumOfDays * NUM_SECONDS_PER_DAY];
    
    return future;
}

+ (NSDate*)backward {
    return [self backward:365];
}

+ (NSDate*)backward:(NSUInteger)days {
    
    NSDate *today = [self dateAtMidnight:[NSDate date]];
    
    if (days == 0) {
        return today;
    }
    
    NSInteger randomNumOfDays = -(arc4random() % days);
    
    NSDate *past = [today dateByAddingTimeInterval:randomNumOfDays * NUM_SECONDS_PER_DAY];
    
    return past;
}

+ (NSDate*)birthday {
    return [self birthdayFromAge:18 toAge:65];
}

+ (NSDate*)birthdayFromAge:(NSUInteger)fromAge toAge:(NSUInteger)toAge {
    
    NSUInteger randomNumOfYears = abs(arc4random() % (toAge - fromAge));
    
    NSUInteger randomTimeFromBeginningOfYear = abs(arc4random() % (365 * NUM_SECONDS_PER_DAY));
    
    NSInteger totalTimeDifference = -randomNumOfYears * 365 * NUM_SECONDS_PER_DAY + randomTimeFromBeginningOfYear;
    
    NSDate * beginningOfYear = [self dateAtBeginningOfYear:[NSDate date]];
    
    NSDate *birthDay = [beginningOfYear dateByAddingTimeInterval:totalTimeDifference ];
    
    return [self dateAtMidnight:birthDay];
}

+ (NSString *) dateString:(NSDate*) date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeStyle = kCFDateFormatterMediumStyle;
    dateFormatter.dateStyle = kCFDateFormatterMediumStyle;
    
    return [dateFormatter stringFromDate:date];
}

// Private methods
+ (NSDate*) dateAtMidnight:(NSDate*) inputDate {
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    NSUInteger preservedComponents = (NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit);
    return [calendar dateFromComponents:[calendar components:preservedComponents fromDate:inputDate]];
}


+ (NSDate*) dateAtBeginningOfYear:(NSDate*) inputDate {
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    NSUInteger preservedComponents = (NSYearCalendarUnit);
    return [calendar dateFromComponents:[calendar components:preservedComponents fromDate:inputDate]];
}

@end
