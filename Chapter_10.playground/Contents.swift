// Chapter 10 숫자와 값. 그리고 객체

import UIKit

var boolValue = true
let boolObject = NSNumber(value: boolValue)
boolValue = boolObject.boolValue

var integerValue = 123
let integerObject = NSNumber(value: integerValue)
integerValue = integerObject.intValue

var doubleValue = 12.3
let doubleObject = NSNumber(value: doubleValue)
doubleValue = doubleObject.doubleValue

let doubleValueFromInteger = integerObject.doubleValue
print("\(integerObject) ->\(doubleValueFromInteger)")

let integerValueFromDouble = doubleObject.intValue
print("\(doubleObject) -> \(integerValueFromDouble)")

let boolObject2 = NSNumber(value: true)
print(boolObject2.stringValue)

let integerObject2 = NSNumber(value: 123)
print(integerObject2.stringValue)

let doubleObject2 = NSNumber(value: 12.3 + 4.56)
print(doubleObject2.stringValue)

let integerObject3 = NSNumber(value: 123)
let doubleObject3 = NSNumber(value: 123.0)

if integerObject3.isEqual(to: doubleObject3) {
    print("\(integerObject3) == \(doubleObject3)")
} else {
    print("\(integerObject3) != \(doubleObject3)")
}

let integerObject4 = NSNumber(value: 123)
let doubleObject4 = NSNumber(value: 12.3 + 4.56)

let result = integerObject4.compare(doubleObject4)
switch result {
case .orderedAscending:
    print("\(integerObject4) < \(doubleObject4)")
case .orderedSame:
    print("\(integerObject4)==< \(doubleObject4)")
case .orderedDescending:
    print("\(integerObject4) > \(doubleObject4)")
}

let rangeValue = NSRange(location: 0, length: 7)
let rangeObject = NSValue(range: rangeValue)

let unboxedRangeValue = rangeObject.rangeValue
print(NSStringFromRange(unboxedRangeValue))

var ptValue = CGPoint(x: 100.0, y: 200.0)
let pointObject = NSValue(cgPoint: ptValue)
ptValue = pointObject.cgPointValue

var vectorValue = CGVector(dx: 100.0, dy: 200.0)
let vectorObject = NSValue(cgVector: vectorValue)
vectorValue = vectorObject.cgVectorValue

var sizeValue =  CGSize(width: 100.0, height: 200.0)
let sizeObject = NSValue(cgSize: sizeValue)
sizeValue = sizeObject.cgSizeValue

var rectValue = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 200.0)
let rectObject = NSValue(cgRect: rectValue)
rectValue = rectObject.cgRectValue

var atValue = CGAffineTransform.identity
let atObject = NSValue(cgAffineTransform: atValue)
atValue = atObject.cgAffineTransformValue

var insetsValue = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
let insetsObject = NSValue(uiEdgeInsets: insetsValue)
insetsValue = insetsObject.uiEdgeInsetsValue

let pointObject2 = NSValue(cgPoint: CGPoint(x: 100, y: 100))
let sizeObject2 = NSValue(cgSize: CGSize(width: 100, height: 200))

if pointObject2.isEqual(to: sizeObject2) {
    print("\(pointObject2) == \(sizeObject2)")
} else {
    print("\(pointObject2) != \(sizeObject2)")
}

let styles = [NumberFormatter.Style.decimal,
                NumberFormatter.Style.currency,
                NumberFormatter.Style.percent,
                NumberFormatter.Style.scientific,
                NumberFormatter.Style.spellOut,
                NumberFormatter.Style.ordinal,
                NumberFormatter.Style.currencyISOCode,
                NumberFormatter.Style.currencyPlural,
                NumberFormatter.Style.currencyAccounting]

let num = NSNumber(value: 123)
let formatter = NumberFormatter()

for style in styles {
    formatter.numberStyle = style
    
    if let result = formatter.string(from: num) {
        print(result)
    }
}

formatter.locale = Locale(identifier: "Ko-kr")
for style in styles {
    formatter.numberStyle = style
    
    if let result = formatter.string(from: num) {
        print(result)
    }
}
