import UIKit
import Foundation

print("\n","Задание 1: Решить квадратное уравнение типа: ax^2+bx+c=0","\n")

let a = 2
if a == 0 {
    print("a - не может быть равно 0")
}
else {
    let b = 8
    let c = 2
    let d = (pow(Double(b),2))-4*Double(a)*Double(c)
    print("Дискриминант данного уравнения равен " + String(d))
    if d < 0 {
        print("Корни уравнения являются комплексными числами. Решение не рассматривается.")
    }
    else if d == 0 {
        print("Дискриминант равен "+String(d)+". Уравнение имеет один корень.")
        let x = -Double(b)/2*Double(a)
        print("Корень уравнения равен "+String(x))
    }
    else if d > 0 {
        print("Уравнение имеет два корня")
        let x1 = (-Double(b)-(sqrt(d)))/(2*Double(a))
        print("Первый корень уравнения равен " + String(NSString(format: "%.2f",x1)))
        let x2 = (-Double(b)+(sqrt(d)))/(2*Double(a))
        print("Второй корень уравнения равен " + String(NSString(format: "%.2f",x2)))        
    }
}

print("\n","Задание 2: Даны катеты прямоугольного треугольника. Найти площадьб периметр и гипотенузу треугольника.","\n")

let katet1:Double = 3
let katet2:Double = 4
let gip = sqrt(pow(katet1,2) + pow(katet2,2)) //длина гипотенузы
let s = (katet1*katet2)/2 //площадь прямоугольного треугольника
let p = katet1+katet2+gip
print("Длина гипотенузы равна " + String(gip))
print("Площадь треугольника равна " + String(s))
print("Периметр треугольника равен " + String(p))

print("\n","Задание 3: Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.","\n")

let vklad:Double = 100000 //сумма вклада
let srok:Double = 60 //срок в месяцах
let stavka:Double = 12.75 //процентная ставка в год
let procent=(stavka/100)*(1/12) //процентная ставка капитализации в месяц
let procent2=pow((1+procent),srok) //процент капитализации за период
let sp=vklad*procent2
print("Сумма вклада через 5 лет равна " + String(NSString(format: "%.2f",sp)))
