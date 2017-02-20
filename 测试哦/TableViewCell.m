//
//  TableViewCell.m
//  测试哦
//
//  Created by admin on 16/10/20.
//  Copyright © 2016年 lihongxu. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
+(CGFloat)cellHeight:(NSDictionary *)dic{
    TableViewCell *cell = [[[NSBundle mainBundle]loadNibNamed:@"TableViewCell" owner:nil options:nil] firstObject];
    cell.label.text = dic[@"title"];
    cell.image.image = [UIImage imageNamed:dic[@"image"]];
    [cell layoutIfNeeded];
    CGRect frame = cell.image.frame;
    NSLog(@"%@",NSStringFromCGRect(frame));
    return frame.origin.y + frame.size.height + 10;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
