//
//  MBFaker.m
//  Faker
//
//  Created by Michał Banasiak on 10/29/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import "MBFaker.h"

@interface MBFaker () {
    NSDictionary* translations;
}

@end

@implementation MBFaker

- (id)init {
    self = [super init];
    
    if (self) {
        translations = [[MBFakerHelper translations] retain];
    }
    
    return self;
}

- (id)initWithLanguage:(NSString*)language {
    self = [self init];
    
    self.language = language;
    
    return self;
}

- (NSArray*)availableLanguages {
    return [[MBFakerHelper translations] allKeys];
}

- (NSString *)fetchStringWithKey:(NSString *)key {
    return [MBFakerHelper fetchRandomElementWithKey:key withLanguage:_language fromTranslationsDictionary:translations];
}

- (void)dealloc {
    [translations release];
    
    [super dealloc];
}

@end
