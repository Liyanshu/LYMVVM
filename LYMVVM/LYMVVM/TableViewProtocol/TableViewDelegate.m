//
//  TableViewDelegate.m
//  LYMVVM
//
//  Created by 李岩 on 2019/5/14.
//  Copyright © 2019 李岩. All rights reserved.
//

#import "TableViewDelegate.h"

@implementation TableViewDelegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.arr.count > 0) {
        UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"提示" message:self.arr[indexPath.row].title preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:action];
        [[self getCurrentVC] presentViewController:alert animated:YES completion:nil];
    }
}
//得到当前最上层控制器
- (UIViewController *)getCurrentVC {
    //获得当前活动窗口的根视图
    UIViewController *vc = [UIApplication sharedApplication].keyWindow.rootViewController;
    while (1) {
        //根据不同的页面切换方式，逐步取得最上层的viewController
        if ([vc isKindOfClass:[UITabBarController class]]) {
            vc = ((UITabBarController *) vc).selectedViewController;
        }
        if ([vc isKindOfClass:[UINavigationController class]]) {
            vc = ((UINavigationController *) vc).visibleViewController;
        }
        if (vc.presentedViewController) {
            vc = vc.presentedViewController;
        } else {
            break;
        }
    }
    return vc;
}

@end
