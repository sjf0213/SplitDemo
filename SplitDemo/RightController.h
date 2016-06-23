//
//  RightController.h
//  SplitDemo
//
//  Created by 宋炬峰 on 16/6/23.
//  Copyright © 2016年 appdream. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RightController : UIViewController
@property(nonatomic, copy)void(^tapPresentHandler)();
@property(nonatomic, copy)void(^tapRightPushHandler)();
@end
