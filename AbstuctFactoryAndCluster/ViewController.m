//
//  ViewController.m
//  AbstuctFactoryAndCluster
//
//  Created by syl on 2017/5/9.
//  Copyright © 2017年 personCompany. All rights reserved.
//

#import "ViewController.h"
#import "TransPortationFactory.h"
@interface ViewController ()<TransPortationDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testFactory];
}
-(void)testFactory
{
    TransPortationFactory *tool = [TransPortationFactory buyTool:car];
    tool.delegate = self;
    [tool run];
    NSLog(@"花了%d钱",[tool shouldPayMoney]);
    TransPortationFactory *tool2 = [TransPortationFactory buyTool:airport];
    tool2.delegate = self;
    [tool2 run];
    NSLog(@"花了%d钱",[tool shouldPayMoney]);
}
-(void)toHome:(Class)cls
{
    NSLog(@"%@",NSStringFromClass(cls));
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
