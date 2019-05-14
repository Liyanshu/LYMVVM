//
//  CustomTableViewCell.m
//  LYMVVM
//
//  Created by 李岩 on 2019/5/14.
//  Copyright © 2019 李岩. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, WScreen, 50)];
        [self.contentView addSubview:self.titleLabel];
        self.titleLabel.backgroundColor=[UIColor whiteColor];
        self.titleLabel.font=[UIFont systemFontOfSize:14];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
