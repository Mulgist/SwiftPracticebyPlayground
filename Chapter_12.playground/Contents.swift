// Chapter 12 클로저

import UIKit

let simpleClosure = { print("Hello World!") }
simpleClosure()

let simpleClosure2 = { (str: String) -> String in
    return "Hello, \(str)"
}
let result = simpleClosure2("Swift Closure")
print(result)

func performClosure(_ c: (String) -> (String)) {
    let result = c("Swift Closure")
    print(result)
}
let simpleClosure3 = { (str: String) -> String in
    return "Hello, \(str)"
}
performClosure(simpleClosure3)
performClosure({ (str: String) -> (String) in
    return "Hello, \(str)"
})

performClosure({ str in
    return "Hello, \(str)"
})
performClosure({str in
    "Hello, \(str)"
})
performClosure({ "Hello, \($0)" })

let numbers = [1, 7, 23, 5, 8, 3, 6]
let orderedNumbers = numbers.sorted(by: { (lhs: Int, rhs: Int) in
    return lhs < rhs
})
print(orderedNumbers)

let numbers2 = [1, 7, 23, 5, 8, 3, 6]
let orderedNumbers2 = numbers2.sorted(by: <)
print(orderedNumbers2)

performClosure ({ "Hello, \($0)" })
performClosure() { "Hello, \($0)" }
performClosure { "Hello, \($0)" }

var num = 0
let closure = { print("inside of block: \(num)") }
num += 10
print("outside of block: \(num)")
closure()

var num2 = 0
let closure2 = {
    num2 += 10
    print("inside of block: \(num2)")
}
num2 += 10
print("outside of block: \(num2)")
closure()
print("outside of block: \(num2)")

if let url = URL(string: "Https://www.apple.com") {
    let str = try String(contentsOf: url)
    str.enumerateLines(invoking: { (line, stop) in
        print(line)
    })
}

DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
    print("Done")
}

let list: NSArray = ["Apple", "Orange", "Melon"]
list.enumerateObjects(options: NSEnumerationOptions.concurrent) { (element, index, stop) in
    print(element)
}
