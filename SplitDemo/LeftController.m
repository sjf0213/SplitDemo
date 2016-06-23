//
//  LeftController.m
//  SplitDemo
//
//  Created by 宋炬峰 on 16/6/23.
//  Copyright © 2016年 appdream. All rights reserved.
//

#import "LeftController.h"

@implementation LeftController
- (IBAction)onTapPresent:(id)sender {
    if (self.tapPresentHandler) {
        self.tapPresentHandler();
    }
}

- (IBAction)onTapRightPush:(id)sender {
    if (self.tapRightPushHandler) {
        self.tapRightPushHandler();
    }
}

@end
