//
//  TableViewCell.m
//  test
//
//  Created by user-letsgo6 on 21.09.17.
//  Copyright © 2017 user-letsgo6. All rights reserved.
//

#import "TableViewCell.h"

@interface TableViewCell()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configureCellWithMyModel:(MyModel *)model {
    self.label.text = model.label;
}

@end
