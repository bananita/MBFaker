//
//  MBFakerTime.m
//  MBFaker Demo
//
//  Created by Daniel Chong on 11/03/15.
//  Copyright (c) 2015 Michał Banasiak. All rights reserved.
//

#import "MBFakerTime.h"

#define NUM_SECONDS_PER_HOUR 3600

@interface MBFakerTime()

+ (NSUInteger) randomHour:(Period) period;
+ (NSTimeInterval) randomTime:(Period) period;

@end

@implementation MBFakerTime

+ (NSDate*)between:(NSDate*)from to:(NSDate*)to period:(Period) period {
    NSDate *date = [super between:from to:to];
    
    return [date dateByAddingTimeInterval:[self randomTime:period]];
}

//+ (NSDate*)forward:(Period) period {
//}

+ (NSDate*)forward:(NSUInteger)days period:(Period) period {
    NSDate *date = [super forward:days];
    
    return [date dateByAddingTimeInterval:[self randomTime:period]];
}

//+ (NSDate*)backward:(Period) period {
//}

+ (NSDate*)backward:(NSUInteger)days period:(Period) period {
    NSDate *date = [super backward:days];
    
    return [date dateByAddingTimeInterval:[self randomTime:period]];
}

// Super method
+ (NSDate*)between:(NSDate*)from to:(NSDate*)to {
    return [self between:from to:to period:kAll];
}

+ (NSDate*)forward {
    return [self forward:kAll];
}

+ (NSDate*)forward:(NSUInteger)days {
    return [self forward:days period:kAll];
}

+ (NSDate*)backward {
    return [self backward:kAll];
}

+ (NSDate*)backward:(NSUInteger)days {
    return [self backward:days period:kAll];
}


// Private method
+ (NSUInteger) randomHour:(Period) period {
    
    NSUInteger hour = 0;
    
    switch (period) {
        case kAll:  // all => (0..23),
            hour = arc4random() % (23+1); break;
        case kDay: //  day => (9..17),
            hour = 9 + arc4random() % (17-9+1); break;
        case kNight: //  night => (18..23),
            hour = 18 + arc4random() % (23-18+1); break;
        case kMorning: //  morning => (6..11),
            hour = 6 + arc4random() % (11-6+1); break;
        case kAfternoon: //  afternoon => (12..17),
            hour = 12 + arc4random() % (17-12+1); break;
        case kEvening: //  evening => (17..21),
            hour = 17 + arc4random() % (21-17+1); break;
        case kMidnight: //  midnight => (0..4)
            hour = 0 + arc4random() % (4-0+1); break;
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

@end
