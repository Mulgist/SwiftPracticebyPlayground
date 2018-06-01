// Chapter 22 생성자와 소멸자

import UIKit

class Simple {
    var str = "Default String"
    var sum = 0
}

let s = Simple()
print(s.str)
print(s.sum)

struct Color {
    var red = 0.0
    var green = 0.0
    var blue = 0.0
}

let black = Color()
let red = Color(red: 1.0, green: 0.0, blue: 0.0)

struct Color2 {
    var red: Double
    var green: Double
    var blue: Double
}

// let black = Color2()  // Error
let red2 = Color2(red: 1.0, green: 0.0, blue: 0.0)

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
}

let ironMan = SuperHero(heroName: "Iron Man", sidekickName: "Jarvis")
let thor = SuperHero(heroName: "Thor")

// let namelessVoid = SuperHero()   // Error

class SuperHero2: Person {
    var sidekick: String?
    
    init(heroName: String, sidekickName: String? = nil) {
        sidekick = sidekickName
        super.init(name: heroName, age: -1)
    }
    
    convenience init(dict: [String: String]) {
        let name = dict["name"]!
        let sName = dict["sidekick"]!
        
        self.init(heroName: name, sidekickName: sName)
    }
}

let dict = ["name": "Iron Man", "sidekick": "Jarvis"]
let ironMan2 = SuperHero2(dict: dict)

struct Color3 {
    var red: Double
    var green: Double
    var blue: Double
    
    init(r: Double, g: Double, b: Double) {
        red = r
        green = g
        blue = b
    }
    
    init() {
        self.init(r: 0.0, g: 0.0, b: 0.0)
    }
    
    init(white: Double) {
        self.init(r: white, g: white, b: white)
    }
}

let redColor = Color3(r: 1.0, g: 0.0, b: 0.0)
let greyColor = Color3(white: 0.5)
let blackColor = Color3()

let dict2 = ["a": "b"]
// let hero = SuperHero2(dict: dict2)   // Error

class SuperHero3: Person {
    var sidekick: String?
    
    init(heroName: String, sidekickName: String? = nil) {
        sidekick = sidekickName
        super.init(name: heroName, age: -1)
    }
    
    convenience init?(dict: [String: String]) {
        guard let name = dict["name"] else {
            return nil
        }
        guard let sName = dict["sidekick"] else {
            return nil
        }
        
        self.init(heroName: name, sidekickName: sName)
    }
    
    deinit {
        // ...
    }
}

let dict3 = ["a": "b"]
if let hero = SuperHero3(dict: dict3) {
    print("\(hero.name), at your service!")
} else {
    print("There's something wrong with super hero :(")
}

enum Weekday: Int {
    case sunday = 1, monday, tuesday, wednesday, thurseday, friday, saturday
    
    init?(value: Int) {
        switch value {
        case Weekday.sunday.rawValue:
            self = .sunday
        case Weekday.monday.rawValue:
            self = .monday
        case Weekday.tuesday.rawValue:
            self = .tuesday
        case Weekday.wednesday.rawValue:
            self = .wednesday
        case Weekday.thurseday.rawValue:
            self = .thurseday
        case Weekday.friday.rawValue:
            self = .friday
        case Weekday.saturday.rawValue:
            self = .saturday
        default:
            return nil
        }
    }
    
    init?(abbr: String) {
        switch abbr {
        case "SUN":
            self = .sunday
        case "MON":
            self = .monday
        case "TUE":
            self = .tuesday
        case "WED":
            self = .wednesday
        case "THU":
            self = .thurseday
        case "FRI":
            self = .friday
        case "SAT":
            self = .saturday
        default:
            return nil
        }
    }
}

var validWeekday = Weekday(value: 1)
print(validWeekday!)

validWeekday = Weekday(abbr: "SAT")
print(validWeekday!)

var invalidWeekday = Weekday(value: 1000)
print(invalidWeekday)

invalidWeekday = Weekday(abbr: "ONE")
print(invalidWeekday)

class A {
    required init() {
        // ...
    }
}

class B: A {
    required init() {
        // ...
    }
}
