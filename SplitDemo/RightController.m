//
//  RightController.m
//  SplitDemo
//
//  Created by 宋炬峰 on 16/6/23.
//  Copyright © 2016年 appdream. All rights reserved.
//

#import "RightController.h"
#import "RightDetailController.h"
@implementation RightController
- (IBAction)onTapPresent:(id)sender {
    if (self.tapPresentHandler) {
        self.tapPresentHandler();
    }
}

- (IBAction)onTapPush:(id)sender {
    if (self.tapRightPushHandler) {
        self.tapRightPushHandler();
    }
}

@end
