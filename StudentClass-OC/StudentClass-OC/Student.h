//
//  Student.h
//  StudentClass
//
//  Created by 李琪 on 2022/7/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic,copy)NSString * name;
@property (nonatomic,copy)NSString * major;
@property (nonatomic,assign) NSInteger age;


-(instancetype)initWithName:(NSString *)name andAge:(NSInteger)age andMajor:(NSString *)major;
-(NSString *)study:(float)time;

@end


NS_ASSUME_NONNULL_END
