//
//  Passenger.h
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject

@property(nonatomic,assign) NSInteger orderId;
@property(nonatomic,copy) NSString * startPlace;
@property(nonatomic,copy) NSString * trainType;
@property(nonatomic,copy) NSString * destination;
@property(nonatomic,copy) NSString * seatNumber;
@property(nonatomic,strong) NSDate * departureTime;
@property(nonatomic,assign) float price;

- (instancetype) initWithOrderId:(NSInteger) orderId startPlace:(NSString *) startPlace trainType:(NSString *) trainType destination:(NSString *) destination;

@end

@interface Passenger : Person
// @property 属性
// 是否年满 18 岁
// 历史订单 （数组）
// 未出行订单 （数组）
@property(nonatomic,assign)BOOL isAdult;
@property(nonatomic,strong) NSMutableArray * historicalOrders;
@property(nonatomic,strong) NSMutableArray * non_travelOrders;


// Function 方法
- (instancetype)initWithHistoricalOrders:(NSMutableArray *) historicalOrders non_travelOrders:(NSMutableArray *) non_travelOrders age:(NSInteger) age;
// 去订票(未出行订单+1）
- (void)bookingTicketsWithOrder:(Orders *) order;

// 去检票（未出行订单-1，历史订单+1）
- (void)ticketingWithOrder:(Orders *) order;
@end

NS_ASSUME_NONNULL_END
