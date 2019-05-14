//
//  TableViewSource.h
//  LYMVVM
//
//  Created by 李岩 on 2019/5/14.
//  Copyright © 2019 李岩. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface TableViewSource : NSObject<UITableViewDataSource>
@property (strong, nonatomic) NSArray <CustomModel *> * arr;
@end

NS_ASSUME_NONNULL_END
