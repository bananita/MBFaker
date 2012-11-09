//
//  MBTableCell.m
//  MBFaker Demo
//
//  Created by Michał Banasiak on 11/9/12.
//  Copyright (c) 2012 Michał Banasiak. All rights reserved.
//

#import "MBTableCell.h"

@implementation MBTableCell

+ (MBTableCell*) tableCellForPerson:(MBPerson *)person{
    NSArray* xib = [[NSBundle mainBundle] loadNibNamed:@"MBTableCell" owner:nil options:nil];
    MBTableCell* tableCell = [xib objectAtIndex:0];
    
    tableCell.labelName.text = person.name;
    tableCell.labelEmail.text = person.email;
    tableCell.labelAddress.text = person.address;
    tableCell.labelZipCode.text = person.zipCode;
    tableCell.labelCity.text = person.city;
    tableCell.textViewLorem.text = person.lorem;
    
    return tableCell;
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_labelName release];
    [_labelEmail release];
    [_labelAddress release];
    [_labelZipCode release];
    [_labelCity release];
    [_textViewLorem release];
    [super dealloc];
}
@end
