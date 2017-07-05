//
//  YCBaseViewController.m
//  YCWebProgressView
//
//  Created by apple on 2017/6/6.
//  Copyright © 2017年 玉河川. All rights reserved.
//

#import "YCBaseViewController.h"
#import "YCWebViewProgress.h"

@interface YCBaseViewController ()

@property (nonatomic, strong) YCWebViewProgress *progressView;

@end

@implementation YCBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController.navigationBar addSubview:self.progressView];
    // Do any additional setup after loading the view.
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(cancelSelect)];
    UIButton *tagButton = [UIButton buttonWithType:UIButtonTypeCustom];
    tagButton.frame = CGRectMake((self.view.bounds.size.width - 150) /2.0, 200, 150, 50);
    [tagButton setBackgroundColor:[UIColor redColor]];
    [tagButton setTitle:@"加载完成" forState:UIControlStateNormal];
    [tagButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal] ;
    [tagButton addTarget:self action:@selector(tagClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tagButton];
}

- (YCWebViewProgress *)progressView {
    if (!_progressView) {
        CGFloat progressBarHeight = 3.0;
        CGRect navigaitonBarBounds = self.navigationController.navigationBar.bounds;
        CGRect barFrame = CGRectMake(0, navigaitonBarBounds.size.height, navigaitonBarBounds.size.width, progressBarHeight);
        _progressView = [[YCWebViewProgress alloc] initWithFrame:barFrame];
        [_progressView displayStartAnimation];
    }
    return _progressView;
}

- (void)tagClick {
    [self.progressView setProgress:1.0];
}

- (void)cancelSelect {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
