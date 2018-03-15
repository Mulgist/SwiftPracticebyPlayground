// Chapter 13 튜플

import UIKit

let member = (1, "James", "Seoul", "010-0000-0000")
let result = (true, "1 record(s) fetched successfully.")

let member2: (Int, String, String, String) = (1, "James", "Seoul", "010-0000-0000")
let result2: (Bool, String) = (true, "1 record(s) fetched successfully.")

let member3 = (1, "James", "Seoul", "010-0000-0000")
let result3 = (true, "1 record(s) fetched successfully.")
let memberId = member3.0
print(memberId)
let name = member3.1
print(name)
let address = member3.2
print(address)
let tel = member3.3
print(tel)
let fetchResultMessage = result3.1
print(fetchResultMessage)

let member4 = (1, "James", "Seoul", "010-0000-0000")
member4.0
// member4.0 = 123 // Error

var member5 = (1, "James", "Seoul", "010-0000-0000")
member5.0
member5.0 = 123

let member6 = (1, "James", "Seoul", "010-0000-0000")
let (memberId2, name2, address2, tel2) = member6
print(memberId2)
print(name2)
print(address2)
print(tel2)

let (_, name3, address3, tel3) = member6
// let (name4, address4, tel4) = member6    // Error

let member7 = (1, "James", "Seoul", "010-0000-0000")
let (memberId5, name5, address5, tel5) = member7
// ...
// let memberId5 = 123  // Error

let member8 = (id: 1, name: "James", address: "Seoul", phone: "010-0000-0000")
let memberId6 = member8.id
let name6 = member8.name
let address6 = member8.address
let tel6 = member8.phone
