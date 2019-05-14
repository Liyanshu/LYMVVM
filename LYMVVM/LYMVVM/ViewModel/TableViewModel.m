//
//  TableViewModel.m
//  LYMVVM
//
//  Created by 李岩 on 2019/5/14.
//  Copyright © 2019 李岩. All rights reserved.
//

#import "TableViewModel.h"

@implementation TableViewModel
-(instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}

//tableView头部刷新的网络请求
- (void)headerRefreshRequestWithCallback:(callback)callback{
    dispatch_async(dispatch_get_main_queue(), ^{
        NSMutableArray <CustomModel *>* arr = [NSMutableArray arrayWithCapacity:5];
        for (int i = 0; i < 5; i ++) {
            NSString * str = [NSString stringWithFormat:@"这是头刷新第%d行",i];
            CustomModel * model = [CustomModel new];
            model.title = str;
            [arr addObject:model];
        }
        callback(arr);
    });
}
//tableView底部刷新的网络请求
- (void)footerRefreshRequestWithCallback:(callback)callback{
    
}
@end
