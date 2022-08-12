//
//  main.swift
//  baitap2
//
//  Created by Nguyễn Văn Phước Nguyên on 08/08/2022.
//

import Foundation

print("Hello, World!")

// Bài 1: Viết chương trình tìm nghiệm của PT bậc 2: ax^2 + bx + c = 0
func tinhDelta(a : Float, b : Float, c: Float) -> Float {
    return b*b - 4*a*c
}
func tinhPtBac2() {
    print("PT bậc 2: ax^2 + bx + c = 0")
    print("Nhập a: ")
    let a = Float(readLine()!)!
    print("Nhập b: ")
    let b = Float(readLine()!)!
    print("Nhập c: ")
    let c = Float(readLine()!)!
    let delta = tinhDelta(a: a, b: b, c: c)
    if delta < 0 {
        print("Phương trình vô nghiệm")
    } else if delta == 0 {
        print("PT có nghiệm kép x1=x2= ",-b/2*a)
    } else {
        print("PT có 2 nghiệm phân biệt:")
        print("x1 = ", -b+sqrt(delta/2*a))
        print("x2 = ", -b-sqrt(delta/2*a))
    }
}

func bai1() {
tinhPtBac2();
}

// Bài 2: Viết chương trình nhập vào 1 mảng số nguyên. Yêu cầu in ra danh sách số lẻ và danh sách số chẵn có trong mảng.
func bai2(){
var numArray = [Int]()
var continueChoose : String
repeat {
    print("Nhập phần tử của mảng")
    let element = Int(readLine()!)!
    numArray.append(element)
    print("Continue ?: y/n")
    continueChoose = readLine()!
} while(continueChoose == "y")

let arrChan = numArray.filter { number in
    number%2 == 0
}
let arrLe = numArray.filter { number in
    number%2 != 0
}
print("Số Chẵn trong chuỗi:")
for number in arrChan {
    print(number,terminator: ",")
}
print("Số Lẻ trong chuỗi:")
for number in arrLe {
    print(number,terminator: ",")
}
}
// Bài 3: Viết chương trình nhập vào họ và tên. In ra họ, tên của người vừa nhập
func bai3() {
print("Nhập họ và tên:")
let name = readLine()!
let nameArr = name.components(separatedBy: " ")
print("Họ: \(nameArr[0])")
for index in 1 ..< nameArr.count {
    print("Tên: \(nameArr[index])")
}
}
// Bài 4: Viết chương trình tính giai thừa của 1 số. Biết x! = x*(x-1)(x-2)…32*1.
func bai4(){
print("Nhập số cần tính giai thừa: ")
let num = Int(readLine()!)!
var result = 1
if num == 0 || num == 1 {
    print("Giai thừa của số \(num) là : \(result)")
} else if num < 0 {
    print("Giai thừa của số \(num) không xác định")
} else {
    for i in 0..<num {
      result *= num-i
    }
    print("Giai thừa của số \(num) là : \(result)")
}
}
// Bài 5: Viết chương trình sắp xếp 1 dãy số vừa nhập thành 1 dãy tăng dần và giảm dần
func bai5 () {
var numberArray = [Int]()
var continueChoose : String
repeat {
    print("Nhập phần tử của mảng")
    let element = Int(readLine()!)!
    numberArray.append(element)
    print("Continue ?: y/n")
    continueChoose = readLine()!
} while(continueChoose == "y")

let increaseArray = numberArray.sorted()
print("Chuỗi tăng dần: \(increaseArray)")
let decreaseArray = numberArray.sorted(by: >)
print("Chuỗi giảm dần: \(decreaseArray)")
}
// Bài 6: Viết chương trình nhập vào 1 số từ 1 đến 5. Nếu người dùng nhập vào số 1 thì chạy bài 1, nếu là số 2 thì chạy bài 2, tương tự với bài 3, 4, 5. (Gợi ý: Viết thành các hàm và sử dụng câu lệnh điều kiện để kiểm tra số nhập vào)
print("Choose exercise to implement 1->5: ")
let exerciseNumber = Int(readLine()!)!
switch exerciseNumber {
case 1:
    bai1()
case 2:
    bai2()
case 3:
    bai3()
case 4:
    bai4()
case 5:
    bai5()
default:
    print("There no exercise number \(exerciseNumber)")
}
