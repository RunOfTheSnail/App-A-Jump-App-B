//
//  ViewController.m
//  App-B
//
//  Created by zhangyan on 2017/4/26.
//  Copyright © 2017年 zhangyan. All rights reserved.
//

#import "ViewController.h"
#import "SchemesTools.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *tempBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    tempBtn.frame = CGRectMake(50, 100, 300, 100);
    [tempBtn setTitle:@"Go back App-A" forState:UIControlStateNormal];
    tempBtn.backgroundColor = [UIColor cyanColor];
    [tempBtn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tempBtn];
    
    
}

/** 按钮的点击事件 */
- (void)clickBtn:(UIButton *)sender
{
    // 返回来的时候的app，直接调用就行
    
    
    SchemesTools *tools = [SchemesTools shareSchemesTools];
    
    NSString *urlStr = [NSString stringWithFormat:@"%@://",tools.schemes];
    NSURL *url = [NSURL URLWithString:urlStr];
    
    [[UIApplication sharedApplication] openURL:url];
    
    // 清除单例中的scheme
    tools.schemes = nil;
    

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
