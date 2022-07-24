//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Passenger.h"


@implementation Orders
 
- (instancetype)initWithOrderId:(NSInteger)orderId startPlace:(NSString *)startPlace trainType:(NSString *)trainType destination:(NSString *)destination{
    self.orderId = orderId;
    self.startPlace = startPlace;
    self.trainType = trainType;
    self.destination = destination;
    return self;
}

@end

@implementation Passenger

- (instancetype)initWithHistoricalOrders:(NSMutableArray *)historicalOrders non_travelOrders:(NSMutableArray *)non_travelOrders age:(NSInteger) age{
    if (self = [super init]) {
        [self createPassengerWithHistoricalOrders:historicalOrders non_travelOrders:non_travelOrders age:age];
    }
    return self;
}

- (void)createPassengerWithHistoricalOrders:(NSMutableArray *)historicalOrders non_travelOrders:(NSMutableArray *)non_travelOrders age:(NSInteger) age {
    
    NSLog(@"%ld", (long)age);
    if (age >= 18) {
        self.isAdult = true;
    }else{
        self.isAdult = false;
    }
    self.historicalOrders = historicalOrders;
    self.non_travelOrders = non_travelOrders;
    
}
-(void)bookingTicketsWithOrder:(Orders *)order{
    if (self.isAdult) {
        [self.historicalOrders addObject:order];
    }else{
        NSLog(@"抱歉，未成年者不能订票！");
    }
}
- (void)ticketingWithOrder:(Orders *)order{
    if ([self.historicalOrders count] == 0) {
        NSLog(@"未有待出行订单！");
    }else{
        
        [self.historicalOrders removeObject:order];
        [self.non_travelOrders addObject:order];
    }
    
}
@end
