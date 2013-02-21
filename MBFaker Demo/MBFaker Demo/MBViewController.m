//
//  MBViewController.m
//  MBFaker Demo
//
//  Created by Michał Banasiak on 11/9/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import "MBViewController.h"
#import "MBTableCell.h"

@interface MBViewController () {
    NSInteger numberOfRows;
    NSMutableArray* people;
}

@end

@implementation MBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    people = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidUnload {
    [self setTableView:nil];
    [self setButtonAdd:nil];
    [super viewDidUnload];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [people count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MBTableCell* tableCell = [tableView dequeueReusableCellWithIdentifier:@"tableCell"];
    
    if (!tableCell)
        tableCell = [MBTableCell tableCell];
    
    [tableCell setPerson:[people objectAtIndex:indexPath.row]];
    
    return tableCell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;
}

- (IBAction)buttonAdd:(id)sender {
    [people insertObject:[MBPerson personWithFakeData] atIndex:0];
    
    [_tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:[NSIndexPath indexPathForRow:0 inSection:0]] withRowAnimation:UITableViewRowAnimationTop];
}

@end
