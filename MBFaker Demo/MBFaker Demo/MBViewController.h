//
//  MBViewController.h
//  MBFaker Demo
//
//  Created by Michał Banasiak on 11/9/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MBViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *buttonAdd;

- (IBAction)buttonAdd:(id)sender;

@end
