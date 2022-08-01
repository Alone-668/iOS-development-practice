//
//  Student.m
//  StudentClass
//
//  Created by 李琪 on 2022/7/18.
//

#import "Student.h"

@implementation Student


-(id)initWithName:(NSString *)name andAge:(NSInteger)age andMajor:(NSString *)major{
    if (self = [super init]) {
        self.name = name;
        self.age = age;
        self.major = major;
    }
    return self;
}

-(NSString *)study:(float)time{
    return [NSString stringWithFormat:@"My name is %@, I am %ld years old, I specialize in %@ and I have been studying for %2.f hours",_name,(long)_age,_major,time];
}
@end
