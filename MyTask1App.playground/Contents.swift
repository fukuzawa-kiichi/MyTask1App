import UIKit

// 課題1-1
let itemA: Int = 1000  // int型
let itemB: String = "こんにちわ"  // String型
let itemC: Double = 42.195  // Bouble型
let itemD: Bool = true  // Bool型

// 課題1-2
let valueA: Int = 100
let valueB: Int = 20

print(valueA + valueB) //足し算
print(valueA - valueB) //引き算
print(valueA * valueB) //掛け算
print(valueA / valueB) //割り算


// 課題1-3
var valueC: Int = 1999

if 0 <= valueC && valueC < 10  {                 //0〜9のとき
    print("\(valueC)は1桁の値です。")
}else if  10 <= valueC && valueC < 100 {         //10〜99のとき
    print("\(valueC)は2桁の値です。")
}else if  100 <= valueC && valueC < 1000 {       //100〜999のとき
    print("\(valueC)は3桁の値です。")
}else {                                          //1000以上のとき
    print("\(valueC)は4桁以上の値です。")
}


// 課題1-4
switch valueC {
case 0..<10:                                  //0〜9のとき
    print("\(valueC)は1桁の値です。")
case 10..<100:                                //10〜99のとき
    print("\(valueC)は2桁の値です。")
case 100..<1000:                              //100〜999のとき
    print("\(valueC)は3桁の値です。")
default:                                      //1000以上のとき
    print("\(valueC)は4桁以上の値です。")
}


// 課題1-5
func calculationA(value: Int){           // 戻り値
    print(10 * value)
}
calculationA(value: 10)


// 課題1-6
func calculationB(valueA: Int, valueB: Int){      // 複数の引数
    print(valueA % valueB)
}
calculationB(valueA: 100, valueB: 30)


// 課題1-7
func calculationC(valueA: Int, valueB: Int) -> Int {
    return valueA + valueB               // 足した数を戻す
}
let valueD = calculationC(valueA: 40, valueB: 25)
if valueD % 2 == 0 {                              // あまりがないとき
    print("計算結果\(valueD)は偶数です。")
}else{                                           //  あまりがあるとき
    print("計算結果\(valueD)は奇数です。")
}

// 課題1-8
class hogeA {
    func put() {                              // プリントを呼び出す
        print("クラスAインスタンスです。")
    }
}

var insA = hogeA()                          // hogeを使えるようにする
insA.put()                                  // put発動!!

// 課題1-9
class hogeB {                              // プリントを呼ぶ
    func putName(name: String)  {
        print("私の名前は\(name)です。")
    }
}
let takashi: hogeB = hogeB()             // hoge型のhogeBを代入
let ken: hogeB = hogeB()

takashi.putName(name: "たかし")           // 関数takashiはhoge型
ken.putName(name: "ケン")                 // 関数kenはほhoge

// 課題1-10
class hogeC {
    
    init(name: String){                  // イニシャライザ
     print("私の名前は\(name)です。")
    }
}
let yamada: hogeC = hogeC(name: "やまだ")   // これだけでプリントされる
let miyata: hogeC = hogeC(name: "みやた")

// 課題1-11
enum User: String {
    case name = "名前"
    case age = "年齢"
    case bloodType = "血液型"
}

let user = User.name
switch user {
case.name:
    print(User.name.rawValue)      // rawvalueを入れることで""内の文字を出力する
case.age:
    print(User.age.rawValue)
default:
    print(User.bloodType.rawValue)

}

// 課題1-12
var num: Int = 0
for num in 1...50{             // 1~50までの数字を並べる
    print(num)
}

// 課題1-13
var valueE: [Int] = []
for valuei in 1...50{
    valueE.append(valuei)   // 1~50までの数字を配列valueEにつなげて(.append)並べていく
}
print(valueE)

// 課題1-14
var valueF: [String] = ["リュウ", "ケン", "ナッシュ", "ガイル", "ベガ", "フェイロン"]
valueF.remove(at: 2)         // remove は取り除くやつ
print(valueF)

// 課題1-15
var valueG: [Int] = [5, 4, 100, 49, 30, 1, 12, 0]
// 昇順
valueG.sort{ $0 < $1 }      // 小さい方から大きい方へ
print(valueG)
// 降順
valueG.sort{ $1 < $0 }     // 大きい方から小さい方へ
print(valueG)

// 課題1-16
print(valueG.count)        // 配列の個数を数える

// 課題1-17
let valueH: [String: Int] = ["a": 1 ,"b": 2,"c": 3]    // String型: Int型のみ
print(valueH["b"])              // bにつながっている2が出力ただしoptional型

// 課題1-18
if let num2 = valueH["b"] {
    print(num2)                   // if let構文内ではInt型になる
}else {
    print("値はnilです。")
}

// 課題1-19
if let num2 = valueH["k"] {        // "k"はnil
    print(num2)
}
else {
    print("値はnilです。")
}

// 課題1-20
// 関数の宣言
let valueI: [Any?] = [1, "こんにちわ" , "こんばんわ", nil, 3, 100, "よろしく", nil, "お願いします。"]

// (要素数)回繰り返す
for  counts in 0...valueI.count - 1 {            //countは1からなので要素数−1回までやる
    // もしあたいがInt型なら
    if let num2 = valueI[counts] as? Int {      // valueのn個目がInt型なら以下の処理
        print("数値は\(num2)です。")
    }
    else if let num2 = valueI[counts] as? String {   // n個目がString型なら以下の処理
        print(num2)
    }
    else{                                   // nilなら以下の処理
        print("値はnilです。")
    }
}

