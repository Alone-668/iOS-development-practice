//
//  Student.swift
//  StudentClass-Swift
//
//  Created by 李琪 on 2022/7/18.
//

import Cocoa

class Student: NSObject {
    
    var name: String
    var age: Int
    var major: String
    init(name:String,age:Int,major:String) {
        self.name = name
        self.age = age
        self.major = major
    }
    func study(time:Float){
        print("My name is \(name) age is \(age) major is \(major) and I have been studying for \(time) hours")
    }
}


