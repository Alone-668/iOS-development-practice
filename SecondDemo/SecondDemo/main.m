//
//  main.m
//  SecondDemo
//
//  Created by 李琪 on 2022/7/20.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Passenger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // Basic Data Types
//        NSInteger i = 1;
//
//        CGFloat f = 1.0;
//
//        BOOL b = YES || NO;
//
//        NSString *s = @"College Demo";
//
//        NSNumber *n0 = @(1);
//        NSNumber *n1 = [[NSNumber alloc] initWithInt:163];
//        NSLog(@"%@",n0);
//        NSLog(@"%@",n1);
//        NSInteger i1 = [n1 intValue];
//
//        NSArray *array = @[@"1",@"2",@(3),[NSArray array]];
//        NSLog(@"%@", array);
//
//        [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            if ([obj isEqualToString:@"2"]) {
//                *stop = YES;
//            }
//        }];
//
//        NSMutableArray *mutableArray = [NSMutableArray array];
//        [mutableArray addObject:@"1"];
//        NSLog(@"%@", mutableArray);
//        [mutableArray removeObject:@"1"];
//        NSLog(@"%@", mutableArray);
//
//        NSMutableDictionary *mutableDictionary = [NSMutableDictionary dictionary];
//        [mutableDictionary setObject:@"1" forKey:@"key1"];
//        NSLog(@"%@", mutableDictionary);
//        [mutableDictionary removeObjectForKey:@"key1"];
//        NSLog(@"%@", mutableDictionary);
//        [mutableDictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
//
//        }];
//
//        NSMutableSet *set1 = [[NSMutableSet alloc] init];
//        [set1 addObject:@123];
//        [set1 addObject:@"1"];
//        NSLog(@"%@",set1);
//        [set1 removeObject:@"1"];
//        NSLog(@"%@",set1);
////
////        [set1 enumerateObjectsUsingBlock:^(id  _Nonnull obj, BOOL * _Nonnull stop) {
////
////        }];
//
//        NSLog(@"123");
//        NSLog(@"Hello, World!");
        NSDateComponents *comps = [[NSDateComponents alloc]init];
        [comps setMonth:01];
        [comps setDay:31];
        [comps setYear:1998];
        NSCalendar *calendar = [[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *birthday = [calendar dateFromComponents:comps];
        NSLog(@"用户生日：%@", birthday);
        Address * address = [[Address alloc] initWithCountry:@"中国" province:@"甘肃省" city:@"天水市" detail:@"清水县"];
        Person * p1 = [[Person alloc] initWithName:@"Liqi" address:address birthday:birthday];
//        调用父类方法，获取passenger年龄
        NSInteger age = [p1 age];
//        根据年龄判断passenger是否成年
        Passenger * passenger =[[Passenger alloc] initWithHistoricalOrders:[[NSMutableArray alloc]init] non_travelOrders:[[NSMutableArray alloc] init] age:age];
//        初始化订单
        Orders * order = [[Orders alloc]initWithOrderId:1 startPlace:@"shanghai" trainType:@"train" destination:@"beijing" ];
//        订票
        [passenger bookingTicketsWithOrder:order];
        NSLog(@"订票后未出行订单：%@", [passenger historicalOrders]);
//        检票
        [passenger ticketingWithOrder:order];
        NSLog(@"检票后未出行订单：%@", [passenger historicalOrders]);
        NSLog(@"检票后历史订单：%@", [passenger non_travelOrders]);
    }
    return 0;
}
