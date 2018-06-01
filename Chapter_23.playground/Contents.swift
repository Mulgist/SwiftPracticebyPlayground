// Chapter 23 다형성

import UIKit

func doSomething() {
    // ...
}

/*
func doSomething() { // Error
    // ...
} */

func process(_ value: Int) {
    print("process integer")
}
func process(_ value: Double) {
    print("process double")
}
process(1)
process(1.0)

func process(_ value: String) {
    print("process(_:)")
}
func process(string value: String) {
    print("process(string:)")
}
func process(str value: String) {
    print("process(str:)")
}
process("swift")
process(string: "swift")
process(str: "swift")

func process2(_ value: Double) -> Int {
    print("process double return integer")
    return Int(value)
}
func process2(_ value: Double) -> Double {
    print("process double return double")
    return value
}
// process2(1.0)    // Error

let intResult: Int = process2(1.0)
let doubleResult: Double = process2(1.0)
// let result = process2(1.0)    // Error

func process2() {
    print("process something")
}
func process2(_ value: String = "str") {
    print("process string")
}
process2()

class MyClass {
    func process(_ value: Int) {
        print("process integer - instance")
    }
    
    static func process(_ value: Int) {
        print("process integer - type")
    }
    
    func process(_ value: Double) {
        print("process double")
    }
}
let cls = MyClass()
cls.process(1)
cls.process(1.0)
MyClass.process(1)

class MyClass2 {
    init() {
        // ...
    }
    
    init(value: Int = 0) {
        // ...
    }
    
    init?(value: Double) {
        // ...
    }
    
    convenience init(value: String) {
        self.init()
        // ...
    }
}

class MyClass3 {
    subscript(index: Int) -> Int {
        print("integer subscript return integer")
        return 0
    }
    
    subscript(index: Int) -> Double {
        print("integer subscript return double")
        return 0.0
    }
    
    subscript(key: String) -> Double {
        print("string subscript return double")
        return 0.0
    }
}
let a = MyClass3()
let integerResult: Int = a[0]
let doubleResult2: Double = a[0]
let result = a["key"]

