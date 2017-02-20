//
//  TableViewCell.h
//  测试哦
//
//  Created by admin on 16/10/20.
//  Copyright © 2016年 lihongxu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *image;
+ (CGFloat)cellHeight:(NSDictionary *)string;
@end
