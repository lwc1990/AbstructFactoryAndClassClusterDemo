//
//  TransPortationFactory.h
//  AbstuctFactoryAndCluster
//
//  Created by syl on 2017/5/9.
//  Copyright © 2017年 personCompany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TransPortationDelegate.h"
typedef enum{
    car,
    boat,
    airport,
    bycicle,
    bus,
    taxi
}ToolsName;
//工厂类
@interface TransPortationFactory : NSObject
+(TransPortationFactory *)buyTool:(ToolsName)tool;
//公共方法
-(int)shouldPayMoney;
-(void)run;
@property(nonnull,strong)id<TransPortationDelegate>delegate;
@end
//具体实现子类
@interface CarFactory : TransPortationFactory

@end
@interface BoatFactory : TransPortationFactory

@end
@interface AirportFactory : TransPortationFactory

@end
@interface BycicleFactory : TransPortationFactory

@end
@interface TaxiFactory : TransPortationFactory

@end
@interface BusFactory : TransPortationFactory

@end
