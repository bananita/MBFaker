//
//  MBAppDelegate.m
//  Faker
//
//  Created by Michał Banasiak on 10/29/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import "MBAppDelegate.h"
#import "MBFaker.h"

@implementation MBAppDelegate

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
//    NSArray* arr = [[NSBundle mainBundle] pathsForResourcesOfType:@"yaml" inDirectory:@""];
//    NSLog(@"%@", [[arr objectAtIndex:0] class]);
//    
//    NSInputStream *stream = [[NSInputStream alloc] initWithFileAtPath: [[NSBundle mainBundle] pathsForResourcesOfType:@"yaml" inDirectory:@""]];
//
//    
//    NSMutableArray* yaml = [YAMLSerialization YAMLWithStream: stream
//                                        options: kYAMLReadOptionStringScalars
//                                              error: nil];
//    NSLog(@"%@", [[yaml objectAtIndex:0] class]);
    
    NSLog(@"%@", [[MBFaker translations] allKeys]);
    
}

@end
