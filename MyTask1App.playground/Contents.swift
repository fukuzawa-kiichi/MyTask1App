import UIKit

// 課題1-1
let itemA: Int = 1000
let itemB: String = "こんにちわ"
let itemC: Double = 42.195
let itemD: Bool = true

// 課題1-2
let valueA: Int = 100
let valueB: Int = 20

print(valueA + valueB)
print(valueA - valueB)
print(valueA * valueB)
print(valueA / valueB)


// 課題1-3
var valueC: Int = 1999

if 0 <= valueC && valueC < 10  {
    print("\(valueC)は1桁の値です。")
}else if  10 <= valueC && valueC < 99 {
    print("\(valueC)は2桁の値です。")
}else if  100 <= valueC && valueC < 999 {
    print("\(valueC)は3桁の値です。")
}else {
    print("\(valueC)は4桁以上の値です。")
}

