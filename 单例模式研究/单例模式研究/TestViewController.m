
//
//  TestViewController.m
//  单例模式研究
//
//  Created by bus365 on 16/4/6.
//  Copyright © 2016年 bus365. All rights reserved.
//

#import "TestViewController.h"
#import "OneTypeSingleModel.h"
#import "SecondTypeSingleModel.h"
#import "GCDTypeSingleModel.h"
@implementation TestViewController
-(void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(10, 100, 100, 50)];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(danli2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
-(void)danli2
{
    OneTypeSingleModel * two = [OneTypeSingleModel shareManager];
    [two.dataArray addObject:@"two"];
    NSLog(@"two--%@--%@",two,two.dataArray);
    
    SecondTypeSingleModel * secondTwo = [SecondTypeSingleModel shareManager];
    NSLog(@"secondTwo--%@--%@",secondTwo,[secondTwo copy]);
    SecondTypeSingleModel * secondNonTwo = [SecondTypeSingleModel nonSharedManager];
    NSLog(@"secondNonTwo--%@--%@",secondNonTwo,[secondNonTwo copy]);
    
    GCDTypeSingleModel * gcdTwo = [GCDTypeSingleModel shareManager];
    NSLog(@"gcdTwo--%@--%@",gcdTwo,[gcdTwo copy]);
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
