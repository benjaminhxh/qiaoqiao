//
//  ViewController.m
//  Beautify
//
//  Created by apple on 16/12/6.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "FlowViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *streamBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    streamBtn.frame = CGRectMake(100, 100, 100, 40);
    [streamBtn setTitle:@"推流" forState:UIControlStateNormal];
    streamBtn.backgroundColor = [UIColor grayColor];
    [streamBtn addTarget:self action:@selector(streamAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:streamBtn];
}

- (void)streamAction
{
    FlowViewController *vc = [[FlowViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
//    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
