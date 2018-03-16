// Chapter 16 구조체와 클래스

import UIKit

struct Person {
    var name: String
    var age: Int
}

let someone = Person(name: "John Doe", age: 0)

var someone2 = Person(name: "John Doe", age: 0)
print(someone2.name)
print(someone2.age)

someone2.name = "James"
someone2.age = 34
print(someone2.name)
print(someone2.age)

class Person2 {
    var name = ""
    var age = 0
    
    func sayHello() {
        print("Hellom World! I'm \(name)")
    }
}

let p = Person2()

let startPoint = CGPoint(x: 0.0, y: 0.0)
var endPoint = startPoint

endPoint.x = 100
endPoint.y = 200

print("start point: {\(startPoint.x), \(startPoint.y)}")
print("end point: {\(endPoint.x), \(endPoint.y)}")

class MyPoint {
    var x = 0.0
    var y = 0.0
}

let startPoint2 = MyPoint()
let endPoint2 = startPoint2

endPoint2.x = 100
endPoint2.y = 200

print("start point: {\(startPoint2.x), \(startPoint2.y)}")
print("end point: {\(endPoint2.x), \(endPoint2.y)}")
