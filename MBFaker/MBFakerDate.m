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

+ (NSDateComponents*) componentForDate:(NSDate*) date;
+ (NSDate*) dateAtBeginningOfYear:(NSDate*) inputDate;

@end

@implementation MBFakerDate

// Public methods
+ (NSDateComponents*)between:(NSDate*)from to:(NSDate*)to {
    
    NSUInteger days = abs((to.timeIntervalSince1970 - from.timeIntervalSince1970) / NUM_SECONDS_PER_DAY);

    NSUInteger randomNumOfDays = arc4random() % days;
    
    NSDate *randomDate = [from dateByAddingTimeInterval:randomNumOfDays * NUM_SECONDS_PER_DAY];
    
    return [self componentForDate:randomDate];
}

+ (NSDateComponents*)forward {
    return [self forward:365];
}

+ (NSDateComponents*)forward:(NSUInteger)days {
    
    NSDate *today = [NSDate date];
    
    if (days == 0) {
        return [self componentForDate:today];
    }
    
    NSInteger randomNumOfDays = arc4random() % days;
    
    NSDate *future = [today dateByAddingTimeInterval:randomNumOfDays * NUM_SECONDS_PER_DAY];

    return [self componentForDate:future];
}

+ (NSDateComponents*)backward {
    return [self backward:365];
}

+ (NSDateComponents*)backward:(NSUInteger)days {
    
    NSDate *today = [NSDate date];
    
    if (days == 0) {
        return [self componentForDate:today];;
    }
    
    NSInteger randomNumOfDays = -(arc4random() % days);
    
    NSDate *past = [today dateByAddingTimeInterval:randomNumOfDays * NUM_SECONDS_PER_DAY];
    
    return [self componentForDate:past];
}

+ (NSDateComponents*)birthday {
    return [self birthdayFromAge:18 toAge:65];
}

+ (NSDateComponents*)birthdayFromAge:(NSUInteger)fromAge toAge:(NSUInteger)toAge {
    
    NSUInteger randomNumOfYears = abs(arc4random() % (toAge - fromAge));
    
    NSUInteger randomTimeFromBeginningOfYear = abs(arc4random() % (365 * NUM_SECONDS_PER_DAY));
    
    NSInteger totalTimeDifference = -randomNumOfYears * 365 * NUM_SECONDS_PER_DAY + randomTimeFromBeginningOfYear;
    
    NSDate * beginningOfYear = [self dateAtBeginningOfYear:[NSDate date]];
    
    NSDate *birthDay = [beginningOfYear dateByAddingTimeInterval:totalTimeDifference ];
    
    return [self componentForDate:birthDay];
}

+ (NSString *) dateString:(NSDateComponents*) component {
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    NSDate* date = [calendar dateFromComponents:component];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeStyle = kCFDateFormatterNoStyle;
    dateFormatter.dateStyle = kCFDateFormatterMediumStyle;
    
    return [dateFormatter stringFromDate:date];
}

// Private methods
+ (NSDateComponents*) componentForDate:(NSDate*) date {
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    NSUInteger preservedComponents = (NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay);
    NSDateComponents *component = [calendar components:preservedComponents fromDate:date];
    
    return component;
}

+ (NSDate*) dateAtBeginningOfYear:(NSDate*) inputDate {
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    NSUInteger preservedComponents = (NSCalendarUnitYear);
    return [calendar dateFromComponents:[calendar components:preservedComponents fromDate:inputDate]];
}

@end
