//
//  main.m
//  StudentClass
//
//  Created by 李琪 on 2022/7/18.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        float time;
        Student * s1 = [[Student alloc]initWithName:@"LiQi" andAge:24 andMajor:@"AI"];
        NSLog(@"您已经学习了多少小时：");
        scanf("%f",&time);
        
        NSLog(@"%@", [s1 study:time]);
    }
    return 0;
}
