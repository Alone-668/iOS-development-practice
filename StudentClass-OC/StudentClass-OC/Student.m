//
//  Student.m
//  StudentClass
//
//  Created by 李琪 on 2022/7/18.
//

#import "Student.h"

@implementation Student
-(void)setName:(NSString *)name{
    _name = name;
}

-(void)setAge:(int)age{
    _age = age;
}

-(void)setMajor:(NSString *)major{
    _major = major;
}

-(NSString *)getName{
    return _name;
}

-(int)getAge{
    return _age;
}

-(NSString *)getMajor{
    return _major;
}


-(id)initWithName:(NSString *)name andAge:(int)age andMajor:(NSString *)major{
    if (self = [super init]) {
        _name = name;
        _age = age;
        _major = major;
    }
    return self;
}

-(NSString *)study:(float)time{
    return [NSString stringWithFormat:@"My name is %@ age is %d major is %@ and I have been studying for %.2f hours",_name,_age,_major,time];
}
@end
