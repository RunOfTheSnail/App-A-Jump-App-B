//
//  ViewController.m
//  App-A
//
//  Created by zhangyan on 2017/4/26.
//  Copyright © 2017年 zhangyan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *tempBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    tempBtn.frame = CGRectMake(50, 100, 300, 100);
    [tempBtn setTitle:@"Go to App-B" forState:UIControlStateNormal];
    tempBtn.backgroundColor = [UIColor cyanColor];
    [tempBtn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tempBtn];
    
    
}

/** 按钮的点击事件 */
- (void)clickBtn:(UIButton *)sender
{
    // 将自己的urlScheme通过参数的形式传递过去，然后到时候直接再次跳转回来
    
    NSString *urlStr = @"App-B://?App-A";
    NSURL *url = [NSURL URLWithString:urlStr];
    
    [[UIApplication sharedApplication] openURL:url];
    
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        // 3. 打开应用程序App-B
        [[UIApplication sharedApplication] openURL:url];
    } else {
        NSLog(@"没有安装");
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
