//
//  TransPortationFactory.m
//  AbstuctFactoryAndCluster
//
//  Created by syl on 2017/5/9.
//  Copyright © 2017年 personCompany. All rights reserved.
//

#import "TransPortationFactory.h"
/* 什么是设计模式（Design pattern）：是一套被反复使用，多数人知晓的，经过分类编目的，代码设计经验总结。实用设计模式是为了可崇勇代码、让代码更容易被他人理解、保证代码可靠性。 */
/* 类簇是一种常用的设计模式，它将一些相近的，私有的，具体的子类组合在一个实体的抽象类下面，我们称这个抽象类为实体，因为它是和我们交互的接口承载者。我们创建的对象都是其子类对象的实例化，并不是它本身的实例化。 */
@implementation TransPortationFactory
+(TransPortationFactory *)buyTool:(ToolsName)tool
{
    switch (tool)
    {
        case car:
            return [[CarFactory alloc]init];
            break;
        case airport:
            return [[AirportFactory alloc]init];
            break;
        case bycicle:
            return [[BycicleFactory alloc]init];
            break;
        case boat:
            return [[BoatFactory alloc]init];
            break;
        case taxi:
            return [[TaxiFactory alloc]init];
            break;
        case bus:
            return [[BusFactory alloc]init];
            break;
        default:
            break;
    }
}
-(int)shouldPayMoney
{
    return 0;
}
-(void)run
{
    [self.delegate toHome:[self class]];
}
@end
//实现各自类的具体行为
@implementation CarFactory
-(int)shouldPayMoney
{
    return 500;
}
-(void)run
{
    [super run];
    NSLog(@"car to home");
}
@end
@implementation AirportFactory
-(int)shouldPayMoney
{
    return 1000;
}
-(void)run
{
    [super run];
    NSLog(@"fly to home");
}
@end
@implementation BoatFactory
-(int)shouldPayMoney
{
    return 300;
}
-(void)run
{
    [super run];
    NSLog(@"boat to home");
}
@end
@implementation BusFactory
-(int)shouldPayMoney{
    return 10;
}
-(void)run{
    [super run];
    NSLog(@"bus to home");
}
@end
@implementation BycicleFactory
-(int)shouldPayMoney{
    return 0;
}
-(void)run{
    [super run];
    NSLog(@"run to home");
}
@end
@implementation TaxiFactory
-(int)shouldPayMoney{
    return 100;
}
-(void)run{
    [super run];
    NSLog(@"go to home");
}
@end

          


