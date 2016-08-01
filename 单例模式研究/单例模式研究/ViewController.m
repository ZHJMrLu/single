//
//  ViewController.m
//  单例模式研究
//
//  Created by bus365 on 16/4/6.
//  Copyright © 2016年 bus365. All rights reserved.
//

#import "ViewController.h"
#import "OneTypeSingleModel.h"
#import "TestViewController.h"
#import "SecondTypeSingleModel.h"
#import "GCDTypeSingleModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(10, 100, 100, 50)];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(danli) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)danli {
    OneTypeSingleModel * one = [OneTypeSingleModel shareManager];
    [one.dataArray addObject:@"dataArray"];
    NSLog(@"one--%@--%@",one,one.dataArray);
    SecondTypeSingleModel * second = [SecondTypeSingleModel shareManager];
    NSLog(@"second--%@",second);
    SecondTypeSingleModel * secondNon = [SecondTypeSingleModel nonSharedManager];
    NSLog(@"secondNon--%@",secondNon);
    GCDTypeSingleModel * gcd = [GCDTypeSingleModel shareManager];
    NSLog(@"gcd--%@",gcd);

    // Dispose of any resources that can be recreated.
    TestViewController * test = [[TestViewController alloc]init];
    [self presentViewController:test animated:YES completion:nil];
}

@end
