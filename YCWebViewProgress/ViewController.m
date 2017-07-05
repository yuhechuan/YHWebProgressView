//
//  ViewController.m
//  YCWebViewProgress
//
//  Created by apple on 2017/6/6.
//  Copyright © 2017年 玉河川. All rights reserved.
//

#import "ViewController.h"
#import "YHBaseViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *tagButton = [UIButton buttonWithType:UIButtonTypeCustom];
    tagButton.frame = CGRectMake((self.view.bounds.size.width - 100) /2.0, 200, 100, 50);
    [tagButton setBackgroundColor:[UIColor redColor]];
    [tagButton setTitle:@"演示" forState:UIControlStateNormal];
    [tagButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal] ;
    [tagButton addTarget:self action:@selector(tagClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tagButton];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)tagClick {
    YHBaseViewController *baseVc = [[YHBaseViewController alloc]init];
    UINavigationController *nc = [[UINavigationController alloc]initWithRootViewController:baseVc];
    [self presentViewController:nc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
