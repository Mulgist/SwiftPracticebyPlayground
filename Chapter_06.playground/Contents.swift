// Chapter 06 제어문: 조건문

import UIKit

let number = 6
if number % 2 == 0 {
    print("\(number) is a multiple if 2")
} else {
    print("\(number) is not a multiple if 2")
}

let number2 = 6
print(number2 % 2 == 0 ? "\(number2) is a multiple if 2" : "\(number2) is not a multiple if 2")

let number3 = 6
if number3 % 2 == 0 {
    print("\(number3) is a multiple if 2")
} else if number3 % 3 == 0 {
    print("\(number3) is a multiple if 3")
} else {
    print("\(number3) is not a multiple if 2")
}

let number4 = 6
if number4 % 2 == 0 && number4 % 3 == 0 {
    print("\(number4) is a multiple of 2 and 3")
} else {
    print("...")
}

print("우유 2")
let eggExists = true
if eggExists {
    print("달걀 6")
}

let eggExists2 = true
if eggExists {
    print("우유 2")
} else {
    print("우유 6")
}

func fetchData(param: [String: Any]) throws {
    if let id = param["id"] as? String {
        let urlStr = "https://kxcoding.com/api-sample/echo/\(id)"
        if let url = URL(string: urlStr) {
            if let result = try? String(contentsOf: url) {
                print(result)
            }
        }
    }
}

func fetchData2(param: [String: Any]) throws {
    if let id = param["id"] as? String, let url = URL(string: "https://kxcoding.com/api-sample/echo/\(id)"), let result = try? String(contentsOf: url) {
        print(result)
    }
}

func fetchData3(param: [String: Any]) throws {
    guard let id = param["id"] as? String else {
        return
    }
    
    let urlStr = "https://kxcoding.com/api-sample/echo/\(id)"
    guard let url = URL(string: urlStr) else {
        return
    }
    
    guard let result = try? String(contentsOf: url) else {
        return
    }
    
    print(result)
}

let number5 = 3
switch number5 {
case 0:
    print("zero")
case 1:
    print("one")
case 2:
    print("two")
case 3:
    print("three")
case 4:
    print("four")
case 5:
    print("five")
default:
    print("Out of range")
}

let number6 = 3
switch number6 {
case 0:
    print("zero")
    fallthrough
case 1:
    print("one")
    fallthrough
case 2:
    print("two")
    fallthrough
case 3:
    print("three")
    fallthrough
case 4:
    print("four")
    fallthrough
case 5:
    print("five")
    fallthrough
default:
    print("Out of range")
}

let number7 = 3
switch number7 {
case 0, 1, 2:
    print("0 ~ 2")
case 3, 4, 5:
    print("3 ~ 5")
default:
    print("Out of range")
}

let number8 = 3
switch number8 {
case 0...2:
    print("0 ~ 2")
case 3...5:
    print("3 ~ 5")
default:
    print("Out of range")
}

let company = "apple"
switch company {
case "APPLE":
    print("iMac")
case "apple":
    print("iPhone")
case "google":
    print("Android")
case "ms":
    print("Windows Phone")
default:
    print("Something else")
}

for i in 0...10 {
    if i > 2 {
        break
    }
    print(i)
}

for i in 0..<3 {
    for j in 0...10 {
        if j > 2 {
            break
        }
        print("inner \(j)")
    }
    print("OUTER \(i)")
}

for i in 0..<3 {
    var shouldBreak = false
    for j in 0...10 {
        if j > 2 {
            shouldBreak = true
            break
        }
        print("inner \(j)")
    }
    if shouldBreak {
        break
    }
    print("OUTER \(i)")
}

for i in 1...10 {
    print("iteration #\(i)")
    if i % 2 != 0 {
        continue
    }
    print(i)
}

for i in 1...10 {
    print("iteration #\(i)")
    if i % 2 != 0 {
        break
    }
    print(i)
}

func doSomething() {
    for i in 1...10 {
        if i < 2 {
            break
        }
        print(i)
    }
    print("DONE")
}
doSomething()

func doSomething2() {
    for i in 1...10 {
        if i < 2 {
            return
        }
        print(i)
    }
    print("DONE")
}
doSomething2()

LOOP: for i in 0..<10 {
    // ...
}
LOOP:
for i in 0..<10 {
        // ...
}

OUTER: for i in 0..<3 {
    for j in 0...10 {
        if j > 2 {
            break OUTER
        }
        print("inner \(j)")
    }
    print("OUTER \(i)")
}
