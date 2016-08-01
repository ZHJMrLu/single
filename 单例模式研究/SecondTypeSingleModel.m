//
//  SecondTypeSingleModel.m
//  单例模式研究
//
//  Created by bus365 on 16/4/6.
//  Copyright © 2016年 bus365. All rights reserved.
//

#import "SecondTypeSingleModel.h"

@implementation SecondTypeSingleModel
/* 线程安全的实现 */
static id shareManger = nil;
+(void)initialize
{
    if (self == [SecondTypeSingleModel class]) {
        shareManger = [[self alloc]init];
    }
}
+(SecondTypeSingleModel *)shareManager
{
    return shareManger;
}
/* 非线程安全的实现 */
+ (SecondTypeSingleModel *)nonSharedManager {
    static id sharedManager = nil;
    
    if (sharedManager == nil) {
        sharedManager = [[self alloc] init];
    }
    
    return sharedManager;
}
-(id)copyWithZone:(NSZone *)zone
{
    return self;
}
@end
