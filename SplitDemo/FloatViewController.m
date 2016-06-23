//
//  FloatViewController.m
//  SplitDemo
//
//  Created by 宋炬峰 on 16/6/23.
//  Copyright © 2016年 appdream. All rights reserved.
//

#import "FloatViewController.h"

@interface FloatViewController ()

@end

@implementation FloatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onClose:(id)sender {
    if (self.dismissHandler) {
        self.dismissHandler();
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
