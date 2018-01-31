// Chapter 11 함수

import UIKit

func plusOne(x: Int) -> Int {
    return x + 1
}

func multiplyTwo(x: Int) -> Int {
    return plusOne(x: x) * 2
}

var result = plusOne(x: 1)
print(result)
result = multiplyTwo(x: result)
print(result)

func multiply(x: Int, by: Int) -> Int {
    return plusOne(x: x) * by
}
let result2 = multiply(x: 1, by: 3)
print(result2)

func onePlusOne() -> Int {
    return 1 + 1
}
let result3 = onePlusOne()
print(result3)

func plusOne2(x: Int) -> Int {
    return x + 1
}
let x = 7
let result4 = plusOne2(x: x)
print(result4)

func plusOne3(x: Int) -> Int {
    return x + 1
}
let value = 7
let result5 = plusOne3(x: value)
print(result5)

multiply(x: 1, by: 2)

func multiply2(x: Int, by: Int) -> Int {
    let tmp = x + 10
    return plusOne3(x: tmp) * by
}

func multiply3(value x: Int, multiplier by: Int) -> Int {
    return plusOne3(x: x) + by
}
multiply3(value: 1, multiplier: 2)

func multiply4(value x: Int, multiplier by: Int) -> Int {
    // return plusOne3(x: value) * multiplier   // Error
    return plusOne3(x: x) + by
}
// multiply4(x: 1, by: 2)   // Error

func multiply5(_ x: Int, _ by: Int) -> Int {
    return x * by
}
multiply5(1, 2)

func multiply6(value x: Int, multiplier by: Int = 2) -> Int {
    return x * by
}
var result6 = multiply6(value: 3, multiplier: 2)
print(result6)
result6 = multiply6(value: 3)
print(result6)

func plus(a: Int, b: Int) -> Int {
    return a + b
}

func plus2(_ numbers: Int...) -> Int {
    var sum = 0
    for n in numbers {
        sum += n
    }
    return sum
}
var result7 = plus2(1, 2)
print(result7)
result7 = plus2(1, 2, 3)
print(result7)
// result7 = plus(1, "I am String! Not a Integer!") // Error

func sayHello(to: String) {
    var tmp = to
    tmp = "Apple"
    print("Hello, \(tmp)")
}
var str = "Swift"
sayHello(to: str)
print(str)

func sayHello2(to: inout String) {
    to = "Apple"
}
var str2 = "Swift"
sayHello2(to: &str2)
print(str2)

func plusOne4(x: Int) -> Int {
    return x + 1
}

func swap(lhs: inout Int, rhs: inout Int) {
    // ...
}

func swap2(lhs: inout Int, rhs: inout Int) -> Void {
    // ...
}

/*
func doSomething(x: Int) -> Int {
    if x < 10 {
        return 0
    }
}   // Error */

func doSomething(x: Int) -> Int {
    if x < 10 {
        return 0
    }
    return -1
}

func doSomething2(x: Int) {
    if x < 10 {
        return
    }
    print("Log Something...")
}

struct Stat {
    let sum: Double
    let avg: Double
}

func statistics(_ numbers: Int...) -> Stat {
    var sum = 0
    for n in numbers {
        sum += n
    }
    return Stat(sum: Double(sum), avg: Double(sum) / Double(numbers.count))
}
let result8 = statistics(1, 2, 3, 4, 5)
print("sum: \(result8.sum)")
print("avg: \(result8.avg)")

func statistics2(_ numbers: Int...) -> (sum: Double, avg: Double) {
    var sum = 0
    for n in numbers {
        sum += n
    }
    return (sum: Double(sum), avg: Double(sum) / Double(numbers.count))
}
let result9 = statistics(1, 2, 3, 4, 5)
print("sum: \(result9.sum)")
print("avg: \(result9.avg)")

func add(_ a: Int, _ b: Int) -> Int {
    print(#function)
    return a + b
}
func subtract(_ a: Int, _ b: Int) -> Int {
    print(#function)
    return a - b
}
func multiply7(_ a: Int, _ b: Int) -> Int {
    print(#function)
    return a * b
}
func divide(_ a: Int, _ b: Int) -> Int {
    print(#function)
    return a / b
}

let calc: (Int, Int) -> Int = add
var result10 = add(1, 2)
print(result10)
result10 = calc(1, 2)
print(result10)
let calc2 = add

let firstOperand = 2
let secondOperand = 3
let op = "*"

var function: ((Int, Int) -> Int)?
switch op {
case "*":
    function = add
case "-":
    function = subtract
case "*":
    function = multiply7
case "/":
    function = divide
default:
    break
}
if let calc = function {
    let result = calc(firstOperand, secondOperand)
    print("\(firstOperand) \(op) \(secondOperand) = \(result)")
} else {
    print("not supported")
}

let firstOperand2 = 2
let secondOperand2 = 3
let op2 = "*"

var function2: ((Int, Int) -> Int)?
switch op2 {
case "*":
    function2 = add
case "-":
    function2 = subtract
case "*":
    function2 = multiply7
case "/":
    function2 = divide
default:
    break
}
func processResult(function f: (Int, Int) -> Int, lhs: Int, rhs: Int) -> Int {
    return f(lhs, rhs)
}
if let calc = function2 {
    let result = processResult(function: calc, lhs: firstOperand2, rhs: secondOperand2)
    print("\(firstOperand2) \(op2) \(secondOperand2) = \(result)")
} else {
    print("not supported")
}

let firstOperand3 = 2
let secondOperand3 = 3
let op3 = "*"

func selectOperator(operator op: String) -> ((Int, Int) -> Int)? {
    switch op3 {
    case "*":
        return add
    case "-":
        return subtract
    case "*":
        return multiply7
    case "/":
        return divide
    default:
        return nil
    }
}
func processResult2(function f: (Int, Int) -> Int, lhs: Int, rhs: Int) -> Int {
    return f(lhs, rhs)
}
if let calc = selectOperator(operator: op3) {
    let result = processResult2(function: calc, lhs: firstOperand2, rhs: secondOperand2)
    print("\(firstOperand3) \(op3) \(secondOperand3) = \(result)")
} else {
    print("not supported")
}

func selectOperator2(operator op: String) -> ((Int, Int) -> Int)? {
    func add(_ a: Int, _ b: Int) -> Int {
        print(#function)
        return a + b
    }
    func subtract(_ a: Int, _ b: Int) -> Int {
        print(#function)
        return a - b
    }
    func multiply7(_ a: Int, _ b: Int) -> Int {
        print(#function)
        return a * b
    }
    func divide(_ a: Int, _ b: Int) -> Int {
        print(#function)
        return a / b
    }
    switch op {
    case "*":
        return add
    case "-":
        return subtract
    case "*":
        return multiply7
    case "/":
        return divide
    default:
        return nil
    }
}

func selectOperator3(operator op: String) -> ((Int, Int) -> Int)? {
    let str = "CALL Nested Function"
    func add(_ a: Int, _ b: Int) -> Int {
        print("\(str) [\(#function)] maching operator \(op)")
        return a + b
    }
    func subtract(_ a: Int, _ b: Int) -> Int {
        print("\(str) [\(#function)] maching operator \(op)")
        return a - b
    }
    func multiply7(_ a: Int, _ b: Int) -> Int {
        print("\(str) [\(#function)] maching operator \(op)")
        return a * b
    }
    func divide(_ a: Int, _ b: Int) -> Int {
        print("\(str) [\(#function)] maching operator \(op)")
        return a / b
    }
    switch op {
    case "*":
        return add
    case "-":
        return subtract
    case "*":
        return multiply7
    case "/":
        return divide
    default:
        return nil
    }
}
