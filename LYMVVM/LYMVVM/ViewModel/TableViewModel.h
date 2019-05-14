//
//  TableViewModel.h
//  LYMVVM
//
//  Created by 李岩 on 2019/5/14.
//  Copyright © 2019 李岩. All rights reserved.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN
typedef void (^callback) (NSArray <CustomModel *>*array);

@interface TableViewModel : NSObject
//tableView头部刷新的网络请求
- (void)headerRefreshRequestWithCallback:(callback)callback;
//tableView底部刷新的网络请求
- (void)footerRefreshRequestWithCallback:(callback)callback;
@end

NS_ASSUME_NONNULL_END
