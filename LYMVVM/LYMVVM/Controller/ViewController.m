//
//  ViewController.m
//  LYMVVM
//
//  Created by 李岩 on 2019/5/14.
//  Copyright © 2019 李岩. All rights reserved.
//

#import "ViewController.h"
#import "TableViewModel.h"
#import "TableViewSource.h"
#import "TableViewDelegate.h"
#import "YiRefreshHeader.h"
@interface ViewController ()
@property (strong, nonatomic)TableViewModel * tableViewModel;
@property (strong, nonatomic)TableViewSource * source;
@property (strong, nonatomic)TableViewDelegate * delegate;
@property (strong, nonatomic)NSMutableArray <CustomModel *> * totalArr;
@property (strong, nonatomic)YiRefreshHeader * header;
@property (strong, nonatomic)UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self layout];
}

-(void)layout{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, WScreen, HScreen-64) style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    
    self.tableViewModel = [TableViewModel new];
    self.source =[TableViewSource new];
    self.delegate = [TableViewDelegate new];
    
    self.tableView.dataSource = self.source;
    self.tableView.delegate = self.delegate;
    
    self.totalArr = [NSMutableArray array];
    self.header = [YiRefreshHeader new];
    
    [self.header header];
    self.header.scrollView = self.tableView;
    
    __weak typeof(self)weakSelf = self;
    self.header.beginRefreshingBlock = ^{
        [weakSelf headerRefreshAction];
    };
    [self.header beginRefreshing];
}

-(void)headerRefreshAction{
    [self.tableViewModel headerRefreshRequestWithCallback:^(NSArray<CustomModel *> * _Nonnull array) {
        self.totalArr = [array mutableCopy];
        self.source.arr = self.totalArr;
        self.delegate.arr = self.totalArr;
        [self.header endRefreshing];
        [self.tableView reloadData];
    }];
}
@end
