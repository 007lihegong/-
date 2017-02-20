//
//  ViewController1.m
//  测试哦
//
//  Created by admin on 16/10/20.
//  Copyright © 2016年 lihongxu. All rights reserved.
//

#import "ViewController1.h"
#import "TableViewCell.h"
#define WIDTH self.view.frame.size.width
#define HEIGHT self.view.frame.size.height
@interface ViewController1 ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong)NSArray *array;
@property(nonatomic,strong)NSArray *imageArray;
@property(nonatomic,strong)NSDictionary *dic;
@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTableView];
    [self initlizeDataSource];
}
- (void)initlizeDataSource{
    _array = @[@"fgkdfgkldfjgkldjgldfjgdf美女,的;来付款了 爱上了肯定回家  ",@"dfgjdlkfgjdfgoprkgperkterkgldfkgldfkgl;dfgld;fgkd;lgdfgdf我也是是你过期了在gdfgdfgdfgdfgdfgdfgdfgdfgdfgdfgdfkdl;fg",@"sdfl哈哈哈哈哈哈👌 😄ksdjflskdjflksdjflksdjfklsdjflksd"];
    _imageArray = @[@"patient_woman",@"certificate-icon",@"shareIcon"];
    
}
- (void)initTableView{
    [_tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"CELL"];
    _tableView.tableFooterView = [[UIView alloc]init];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _array.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    _dic = @{@"title":_array[indexPath.row],@"image":_imageArray[indexPath.row]};
    return [TableViewCell cellHeight:_dic];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableViewCell *cell;
    if (!cell) {
        cell= [[[NSBundle mainBundle]loadNibNamed:@"TableViewCell" owner:nil options:nil] firstObject];
    }
    cell.label.text =_array[indexPath.row];
    cell.image.image = [UIImage imageNamed:_imageArray[indexPath.row]];
    return cell;
}
@end
