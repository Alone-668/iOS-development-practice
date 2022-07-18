//
//  Student.h
//  StudentClass
//
//  Created by 李琪 on 2022/7/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
{
    NSString * _name;
    NSString * _major;
    int _age;
}
-(void)setName:(NSString *)name;
-(void)setAge:(int)age;
-(void)setMajor:(NSString *)major;

-(NSString *)getName;
-(int)getAge;
-(NSString *)getMajor;

-(id)initWithName:(NSString *)name andAge:(int)age andMajor:(NSString *)major;
-(NSString *)study:(float)time;
@end


NS_ASSUME_NONNULL_END
