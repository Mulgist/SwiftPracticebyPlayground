// Chapter 21 상속

import UIKit

class A {
    var value = ""
    
    func doSomething() {
        print("Hello")
    }
    
    private func doSomethingPrivate() {
        print("Hello")
    }
}

class B: A {
    
}

let a = A()
a.value = "value"
a.doSomething()

let b = B()
b.value = "value"
b.doSomething()

// b.doSomethingPrivate()   // Error

final class A2 {
    // ...
}

class Person {
    var name: String
    var age: Int
    var portrait: NSData?
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sayHello() {
        print("Hello, World! I'm \(name)")
    }
}

class SuperHero: Person {
    var sidekick: String?
    
    init(heroName: String, sidekickName: String? = nil) {
        sidekick = sidekickName
        super.init(name: heroName, age: -1)
    }
    
    func callSidekick() {
        if let name = sidekick {
            print("Hey, \(name)!")
        } else {
            print("\(name) is working alone.")
        }
    }
    
    func attack(weapon: String, target: String?) -> Bool {
        if let target = target {
            callSidekick()
            print("Attack \(target) with \(weapon)!!!")
            return true
        }
        return false
    }
}
