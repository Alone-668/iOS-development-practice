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
        Student * s1 = [[Student alloc]initWithName:@"LiQi" andAge:24 andMajor:@"AI"];
        NSLog(@"%@", [s1 study:8.0]);
    }
    return 0;
}
