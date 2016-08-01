//
//  OneTypeSingleModel.m
//  单例模式研究
//
//  Created by bus365 on 16/4/6.
//  Copyright © 2016年 bus365. All rights reserved.
//

#import "OneTypeSingleModel.h"
static OneTypeSingleModel * oneManager = nil;
@implementation OneTypeSingleModel
@synthesize dataArray = _dataArray;
+(OneTypeSingleModel *)shareManager{
    @synchronized (self) { //为了确保多线程情况下，仍然确保实体的唯一性
        if (oneManager == nil) {
            oneManager = [[self alloc]init]; //该方法会调用 allocWithZone
        }
    }
    return oneManager;
}
+(instancetype)allocWithZone:(struct _NSZone *)zone
{
    @synchronized (self) { //为了确保多线程情况下，仍然确保实体的唯一性
        if (oneManager == nil) {
            oneManager = [super allocWithZone:zone]; //确保使用同一块内存地址
            return oneManager;
        }
    }
    return nil;
}
-(instancetype)init
{
    if (oneManager) {
        _dataArray = [NSMutableArray array];
        return oneManager;
    }
    
    return self;
}
-(id)copyWithZone:(NSZone *)zone
{
    return self;
}
@end
