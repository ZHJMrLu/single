//
//  GCDTypeSingleModel.m
//  单例模式研究
//
//  Created by bus365 on 16/4/6.
//  Copyright © 2016年 bus365. All rights reserved.
//

#import "GCDTypeSingleModel.h"

@implementation GCDTypeSingleModel
+(GCDTypeSingleModel *)shareManager{
    static dispatch_once_t onceToken;
    __strong static GCDTypeSingleModel * shareManager;
    dispatch_once(&onceToken, ^{
        shareManager = [[GCDTypeSingleModel alloc]init];
    });
    return shareManager;
}
-(id)copyWithZone:(NSZone *)zone
{
    return self;
}
@end
