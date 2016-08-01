//
//  OneTypeSingleModel.h
//  单例模式研究
//
//  Created by bus365 on 16/4/6.
//  Copyright © 2016年 bus365. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OneTypeSingleModel : NSObject
/** <#name#> */
@property(nonatomic,strong)NSMutableArray * dataArray;
+(OneTypeSingleModel *)shareManager;
@end
