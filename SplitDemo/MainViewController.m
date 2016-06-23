//
//  MainViewController.m
//  SplitDemo
//
//  Created by 宋炬峰 on 16/6/23.
//  Copyright © 2016年 appdream. All rights reserved.
//

#import "MainViewController.h"
#import "LeftController.h"
#import "RightController.h"
#import "FloatViewController.h"

@interface MainViewController()
@property(nonatomic, strong) LeftController* leftController;
@property(nonatomic, strong) RightController* rightRootController;
@property(nonatomic, strong) UINavigationController* rightNavi;
@end

@implementation MainViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    __weak typeof(self)wself = self;
    if ([segue.identifier isEqualToString:@"segueLeft"]) {
        self.leftController = [segue destinationViewController];
        self.leftController.tapPresentHandler = ^{
            
            FloatViewController* detail = (FloatViewController*)[wself.storyboard instantiateViewControllerWithIdentifier:@"FloatViewController"];
            __weak FloatViewController* detailAvatar = detail;
            detail.dismissHandler = ^{ [detailAvatar dismissViewControllerAnimated:YES completion:nil];};
            
            if([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0){
                detail.modalPresentationStyle = UIModalPresentationOverCurrentContext|UIModalPresentationFullScreen;
                [wself presentViewController:detail animated:YES completion:nil];
            }else{
                [UIApplication sharedApplication].keyWindow.rootViewController.modalPresentationStyle=
                UIModalPresentationCurrentContext|UIModalPresentationFullScreen;//you must use the rootViewController if the system version under the iso 8.0 or the background will be black
                [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:detail animated:YES completion:nil];
            }
        };
        
        self.leftController.tapRightPushHandler = ^{
            FloatViewController* detail = (FloatViewController*)[wself.storyboard instantiateViewControllerWithIdentifier:@"FloatViewController"];
            __weak FloatViewController* detailAvatar = detail;
            detail.dismissHandler = ^{ [detailAvatar.navigationController popViewControllerAnimated:YES];};
            
            [wself.rightNavi pushViewController:detail animated:YES];
        };
    }
    
    if ([segue.identifier isEqualToString:@"segueRight"]) {
        self.rightNavi = [segue destinationViewController];
        self.rightRootController = (RightController*)self.rightNavi.topViewController;
        
        
        self.rightRootController.tapPresentHandler = ^{
            FloatViewController* detail = (FloatViewController*)[wself.storyboard instantiateViewControllerWithIdentifier:@"FloatViewController"];
            detail.modalPresentationStyle = UIModalPresentationOverCurrentContext|UIModalPresentationFullScreen;
            __weak FloatViewController* detailAvatar = detail;
            detail.dismissHandler = ^{ [detailAvatar dismissViewControllerAnimated:YES completion:nil];};
            [wself presentViewController:detail animated:YES completion:nil];
        };
        
        self.rightRootController.tapRightPushHandler = ^{
            FloatViewController* detail = (FloatViewController*)[wself.storyboard instantiateViewControllerWithIdentifier:@"FloatViewController"];
            __weak FloatViewController* detailAvatar = detail;
            detail.dismissHandler = ^{ [detailAvatar.navigationController popViewControllerAnimated:YES];};
            
            [wself.rightNavi pushViewController:detail animated:YES];
        };
    }
}
@end
