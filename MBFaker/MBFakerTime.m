//
//  MBFakerTime.m
//  MBFaker Demo
//
//  Created by Daniel Chong on 11/03/15.
//  Copyright (c) 2015 Michał Banasiak. All rights reserved.
//

#import "MBFakerTime.h"

#define NUM_SECONDS_PER_HOUR 3600
#define NUM_SECONDS_PER_MINUTE 60

@interface MBFakerTime()

+ (NSUInteger) randomHour:(Period) period;
+ (NSTimeInterval) randomTime:(Period) period;
+ (NSInteger) hourFromTimeInterval:(NSTimeInterval) time;
+ (NSInteger) minuteFromTimeInterval:(NSTimeInterval) time;
+ (NSInteger) secondFromTimeInterval:(NSTimeInterval) time;
+ (NSDateComponents*) newDateComponentWithTime:(NSDateComponents*) date period:(Period) period;

@end

@implementation MBFakerTime

+ (NSDateComponents*)between:(NSDate*)from to:(NSDate*)to period:(Period) period {
    NSDateComponents *date = [super between:from to:to];

    return [self newDateComponentWithTime:date period:period];
}

+ (NSDateComponents*)forward:(NSUInteger)days period:(Period) period {
    NSDateComponents *date = [super forward:days];
    
    return [self newDateComponentWithTime:date period:period];
}

+ (NSDateComponents*)backward:(NSUInteger)days period:(Period) period {
    NSDateComponents *date = [super backward:days];
    
    return [self newDateComponentWithTime:date period:period];
}

// Super method
+ (NSDateComponents*)between:(NSDate*)from to:(NSDate*)to {
    return [self between:from to:to period:kPeriodAll];
}

+ (NSDateComponents*)forward {
    return [self forward:365 period:kPeriodAll];
}

+ (NSDateComponents*)forward:(NSUInteger)days {
    return [self forward:days period:kPeriodAll];
}

+ (NSDateComponents*)backPeriodward {
    return [self backward:365 period:kPeriodAll];
}

+ (NSDateComponents*)backPeriodward:(NSUInteger)days {
    return [self backward:days period:kPeriodAll];
}

+ (NSString *) dateString:(NSDateComponents*) component {
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    NSDate* date = [calendar dateFromComponents:component];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.timeStyle = kCFDateFormatterShortStyle;
    dateFormatter.dateStyle = kCFDateFormatterMediumStyle;
    
    return [dateFormatter stringFromDate:date];
}

// Private method
+ (NSUInteger) randomHour:(Period) period {
    
    NSUInteger hour = 0;
    
    switch (period) {
        case kPeriodAll:  // all => (0..23),
            hour =      arc4random() % (23+1); break;
        case kPeriodDay: //  day => (9..17),
            hour = 9  + arc4random() % (17-9+1); break;
        case kPeriodNight: //  night => (18..23),
            hour = 18 + arc4random() % (23-18+1); break;
        case kPeriodMorning: //  morning => (6..11),
            hour = 6  + arc4random() % (11-6+1); break;
        case kPeriodAfternoon: //  afternoon => (12..17),
            hour = 12 + arc4random() % (17-12+1); break;
        case kPeriodEvening: //  evening => (17..21),
            hour = 17 + arc4random() % (21-17+1); break;
        case kPeriodMidnight: //  midnight => (0..4)
            hour =      arc4random() % (4+1); break;
        default:
            break;
    }
    
    return hour;
}

+ (NSTimeInterval) randomTime:(Period) period {
    NSUInteger hour = [self randomHour:period];
    
    NSTimeInterval timeInterval = hour * NUM_SECONDS_PER_HOUR + arc4random() % NUM_SECONDS_PER_HOUR;
    
    return timeInterval;
}

+ (NSInteger) hourFromTimeInterval:(NSTimeInterval) time {
    return abs(time) / NUM_SECONDS_PER_HOUR;
}

+ (NSInteger) minuteFromTimeInterval:(NSTimeInterval) time {
    return abs(time) % NUM_SECONDS_PER_HOUR / NUM_SECONDS_PER_MINUTE;
}

+ (NSInteger) secondFromTimeInterval:(NSTimeInterval) time {
    return abs(time) % NUM_SECONDS_PER_MINUTE;
}

+ (NSDateComponents*) newDateComponentWithTime:(NSDateComponents*) date period:(Period) period {
    NSTimeInterval time = [self randomTime :period];
    
    [date setHour:  [self hourFromTimeInterval:time]];
    [date setMinute:[self minuteFromTimeInterval:time]];
    [date setSecond:[self secondFromTimeInterval:time]];
    
    return date;
}
@end
