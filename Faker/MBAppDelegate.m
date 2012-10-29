//
//  MBAppDelegate.m
//  Faker
//
//  Created by Michał Banasiak on 10/29/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import "MBAppDelegate.h"
#import "YAML.framework/Headers/YAMLSerialization.h"

@implementation MBAppDelegate

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSInputStream *stream = [[NSInputStream alloc] initWithFileAtPath: [[NSBundle mainBundle] pathForResource:@"items" ofType:@"yaml"]];

    
    NSMutableArray* yaml = [YAMLSerialization YAMLWithStream: stream
                                        options: kYAMLReadOptionStringScalars
                                          error: nil];
    NSLog(@"%@", yaml);
    
}

@end
