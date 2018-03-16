// Chapter 15 열거형

import UIKit

enum Weekday {
    case sunday, monday, tuesday, wednesday, thursday, friday, saturday
}

enum Weekday2 {
    case sunday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

// if Weekday2.sunday == 0 { }  // Error

let week = Weekday2.sunday
let week2: Weekday2 = .sunday
// let week2 = .sunday  // Error

enum Weekday3: Int {
    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
}

let calendar = Calendar.current
let weekdayComp = calendar.component(Calendar.Component.weekday, from: Date())
let week3 = Weekday3(rawValue: weekdayComp)!

switch week3 {
case .sunday:
    print("Today is Sunday")
case .monday:
    print("Today is Monday")
case .tuesday:
    print("Today is Tuesday")
case .wednesday:
    print("Today is Wednesday")
case .thursday:
    print("Today is Thursday")
case .friday:
    print("Today is Friday")
case .saturday:
    print("Today is Saturday")
}

enum Weekday4: Int {
    case sunday, monday, tuesday, wednesday, thurseday, friday, saturday
}

enum Weekday5: Int {
    case sunday, monday, tuesday, wednesday, thurseday = 10, friday, saturday
}

// enum Weekday5: Int { case sunday, monday, tuesday, wednesday = 10, thurseday = 10, friday, saturday }    // Error

enum WeekdayName: String {
    case sunday = "SUN", monday, tuesday, wednesday, thurseday, friday, saturday
}

print(WeekdayName.sunday)
print(WeekdayName.sunday.rawValue)
print(WeekdayName.monday)
print(WeekdayName.monday.rawValue)

enum VideoInterface {
    case dvi(Int, Int)
    case hdmi(Int, Int, Double, Bool)
    case displayPort(CGSize)
}

enum VideoInterface2 {
    case dvi(width: Int, height: Int)
    case hdmi(width: Int, height: Int, version: Double, audio: Bool)
    case displayPort(resolution: CGSize)
}

var input = VideoInterface.dvi(2048, 1536)

switch input {
case .dvi:
    print("dvi")
case .hdmi(let width, var height, _, _):
    print("hdmi \(width)x\(height)")
case let .displayPort(size):
    print("dp \(size.width)x\(size.height)")
}

if case let .dvi(width, height) = input {
    print("dvi \(width)x\(height)")
}

func doSomething(input: VideoInterface) {
    guard case .dvi(let width, let height) = input else { return }
    print("dvi \(width)x\(height)")
}
