// Chapter 05 제어문: 반복문

import UIKit

let list = ["One", "Two", "Three"]
for str in list {
    print(str)
}

let str = "One"
for ch in str {
    print(ch)
}

for index in 2..<6 {
    print(index)
}

for _ in 2..<6 {
    // ...
}

let list2 = ["One", "Two", "Three"]
for str in list2.reversed() {
    print(str)
}

let str2 = "One"
for ch in str2.characters.reversed() {
    print(ch)
}

for index in (2..<6).reversed() {
    print(index)
}

var i = 0
/*
while i < 3 {
    print(i)    // 무한루프
}
*/
while i < 3 {
    print(i)
    i += 1
}

var i2 = 10
while i2 < 3 {
    print("while \(i2)")
    i2 += 1
}
print("after while \(i2)")

i2 = 10
repeat {
    print("de-while \(i2)")
    i2 += 1
} while i2 < 3
print("after do-while \(i2)")

for i in 1...9 {
    for j in 1...9 {
        print("\(i) x \(j) = \(i * j)")
    }
    print("")
}
