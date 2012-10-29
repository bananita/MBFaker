//
//  MBFaker.m
//  Faker
//
//  Created by Michał Banasiak on 10/29/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import "MBFaker.h"

@interface MBFaker ()

+ (NSDictionary*)translations;
+ (NSDictionary*)dictionaryForLanguage:(NSString*)language;

@end

@implementation MBFaker

+ (NSDictionary*)translations {
    NSMutableDictionary* translationsDictionary = [[[NSMutableDictionary alloc] init] autorelease];
    
    NSArray* translationPaths = [[NSBundle mainBundle] pathsForResourcesOfType:@"yml" inDirectory:@""];
    
    for (NSString* path in translationPaths) {
        NSInputStream *stream = [[NSInputStream alloc] initWithFileAtPath: path];
        
        
        NSMutableArray* yaml = [YAMLSerialization YAMLWithStream: stream
                                                         options: kYAMLReadOptionStringScalars
                                                           error: nil];
        
        NSDictionary* dictionary = (NSDictionary*)[yaml objectAtIndex:0];
        
        NSString* key = [[dictionary allKeys] objectAtIndex:0];
        
        [translationsDictionary setObject: [dictionary objectForKey:key] forKey:key];
    }
    
    return (NSDictionary*)translationsDictionary;
}

+ (NSDictionary*)dictionaryForLanguage:(NSString*)language {
    NSDictionary* dictionary = [[MBFaker translations] objectForKey:language];
    
    return [dictionary objectForKey:@"faker"];
}

@end
