// Chapter 17 속성

import UIKit

class Person {
    var name: String = ""
    var age: Int = 0
}

let p = Person()
let name = p.name

class Person2 {
    var name = ""
    var age = 0
}

struct Contact {
    var email: String?
    var mobile: String?
    var fax: String?
}

var james = Contact()
james.email = "james@example.com"

let james2 = Contact()
// james2.email = "james@example.com"   // error

struct Contact2 {
    var email: String?
    var mobile: String?
    var fax: String?
    
    init() {
        print("new Contact instance")
    }
}

class Person3 {
    var name = ""
    var age = 0
    
    lazy var contacts = Contact2()
    
    init() {
        print("new Person instance")
    }
}

let james3 = Person3()

print(james3.name)
print(james3.age)

james3.contacts.email = "james@example.com"

class Person4 {
    var name: String = ""
    var birthDate: Date?
    var age: Int {
        get {
            if let date = birthDate {
                let calendar = NSCalendar.current
                let components = calendar.dateComponents([.year], from: date, to: Date())
                return components.year ?? -1
            }
            return -1
        }
        set {
            let calendar = NSCalendar.current
            birthDate = calendar.date(byAdding: .year, value: newValue * -1, to: Date())
        }
        /*
        set (year) {
            let calendar = NSCalendar.current
            birthDate = calendar.date(byAdding: .year, value: year * -1, to: Date())
        }
         */
    }
}

let calendar = Calendar.current
var components = DateComponents()

components.year = 1983
components.month = 3
components.day = 17

let james4 = Person4()
james4.birthDate = calendar.date(from: components)
print(james4.age)

james4.age = 10
print(james4.birthDate!)

class Person5 {
    var name: String = ""
    var birthDate: Date?
    var age: Int {
        if let date = birthDate {
            let calendar = NSCalendar.current
            let components = calendar.dateComponents([.year], from: date, to: Date())
            return components.year ?? -1
        }
        return -1
    }
}

enum Weekday: Int {
    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
    
    static var today: Weekday {
        let cal = Calendar.current
        let today = Date()
        let weekday = cal.component(.weekday, from: today)
        return Weekday(rawValue: weekday)!
    }
}

Weekday.today

class A {
    static var sharedValue: Int {
        return 10
    }
}
class B: A {
    // override class var sharedValue: Int { return 20 }    // Error
}

class A2 {
    class var sharedValue: Int {
        return 10
    }
}
class B2: A2 {
    override class var sharedValue: Int {
        return 20
    }
}

print(A2.sharedValue)
print(B2.sharedValue)

class Person6 {
    var name = "John Doe" {
        willSet {
            print("Current name is \(name). New name is \(newValue).")
        }
        didSet {
            print("Current name is \(name). Old name is \(oldValue)")
        }
    }
}

let p2 = Person6()
p2.name = "James"

class Person7 {
    var name = "John Doe" {
        willSet (newName) {
            print("Curreßnt name is \(name). New name is \(newName).")
        }
        didSet (oldName) {
            print("Current name is \(name). Old name is \(oldName)")
        }
    }
}
