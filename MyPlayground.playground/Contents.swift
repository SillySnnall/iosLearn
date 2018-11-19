//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// 定义一个常量
var a:Int = 10
// 定义一个变量
var b="slkjdla"

a=20


let a123 = 20


print(a123)

let 漢子 = "漢紙"

print(漢子)

/// 這是一個廠里
let 🙂 = "活動啦"

print(🙂)
/*
 多行注釋
 */

let q : Int = 10
// 默認類型是double
let z : Double = 10.0
let f:Float=20.4343434

let t : Bool = true

let jack = 18
// if(jack==18)
if jack>=18 {
    print("大於18")
}else{
    print("小魚18")
}

var qqq = 10
var aaa = 30

qqq+aaa

8/3

10%3

//10%1.4 求餘數不能為小數

// 閉區間 (包含頭，包含尾)
for index in 0...5{
    print("\(index)*5=\(index*5)")
}

// 半閉區間 (包含頭，不包含尾)
for index in 0..<5{
    print("\(index)*5=\(index*5)")
}


// switch語句
let gxxx = 70
switch gxxx {
case 0..<60:
    print("成績不合格")
case 70..<79:
    print("成合格")
    fallthrough // 可以产生case穿透
case 90..<100:
    print("成績合格")
default:
    print("合格")
}

// 数组遍历
let arr = ["a","b","n","r"]

for i in 0..<arr.count{
    print(arr[i])
}

// 字符串遍历
let strx = "sjaldjlajdsla"

for i in strx.characters{
    print(i)
}


// 方法
func hhhx(){
    print("无参函数")
}

hhhx()


func hhh12()->String{
    return "大萨达多所"
}

print(hhh12())


func qqq2(x:Int,y:Int)->(String){
    return String(x+y)
}

print(qqq2(x: 3, y: 5))

// 可选类型

var qwe : Optional<Int>
qwe = 10
// 使用可选类型必须对他进行强制解包(!)

print(qwe)
print(qwe!)

// 我们初始化变量/常量必须要有值，否则，就把他定义为可选类型

var asd:String?// 可变字符串
asd="我是一个"
print(asd!)

// nil null 代表是一个空值，在swift中的nil代表的是一个特殊含义的字符，就是表示没有值，在oc中的nil就等于空

// 断言
let student = 19
//assert(student>18,"大于18岁")
assert(student>18)

// 判空
var rrr = ""
if rrr.isEmpty{
    print("为空了")
}

// 字符串截取
var stringC = "hello,world"
stringC.prefix(3)
stringC.suffix(3)

let s1 = stringC.index(stringC.startIndex,offsetBy:3)
let s2 = stringC.index(stringC.startIndex,offsetBy:7)

stringC[s1...s2]
// 转换为OC截取方式
(stringC as NSString).substring(to: 3)
(stringC as NSString).substring(from: 3)
(stringC as NSString).substring(with: NSRange.init(location: 2, length: 5))

// 字符串替换
stringC.replacingOccurrences(of:"wor", with: "123")

// 字符串插入
stringC.insert("e", at: stringC.startIndex)
stringC.insert("5", at: stringC.endIndex)
stringC.insert("t", at: stringC.index(stringC.startIndex,offsetBy:3))

// 字符串删除
stringC.remove(at: stringC.index(stringC.startIndex,offsetBy:3))
print(stringC)
stringC.removeAll()
print(stringC)
// 制定范围删除
var stringF="你好的，的上拉"
stringF.removeSubrange(stringF.startIndex...stringF.index(stringF.startIndex,offsetBy:3))

// 大小写转换
str.uppercased()
str.lowercased()

// 首字母大写
str.capitalized
// 检查字符串前缀和后缀
str.hasPrefix("he")
str.hasSuffix("nd")

// 数组
var array1 = ["jack","xsalk","dsada"]
var array2 = ["ewew","3232","cxcx"]

// 数组拼接
array1+array2

// 添加元素
array1.append(array2[0])
// 插入
array1.insert("lsjdadjla", at: 3)
// 根据下标删除
array1.remove(at: 2)
// 删除最后2个元素
array1.removeLast(2)
// 删除开始2个元素
array1.removeFirst(2)

// 范围删除元素
var arrarr = ["a","b","c","d","e","f"]
arrarr.removeSubrange(1...3)

// 修改元素
arrarr[1] = "qweqweq"

// 修改多个元素
var arrarr1 = ["a","b","c","d","e","f"]
arrarr1[1...3] = ["rere","ewew","1231"]

// 元组
let num = ("jack",18,175.5)
num.0

// 下划线是忽略值
let yz = (name:"d就是垃圾多了",_:31,height:165.43)
yz.height

let (name,age,height) = ("安徽来得及啊", 123,21.56)
name


// 字典
var dict=["name":"212312","age":"123"]

for (key,value) in dict{
    print("\(key)=\(value)")
}

// key存在就是修改，key不存在就是添加
dict["name"] = "xxx111"

dict.updateValue("xklj", forKey: "age")

dict.removeValue(forKey: "name")

var dict1 = ["name":"张三","age":18,"升高":123.6] as [String : Any]

// 枚举
enum dirction{
    case north
    case south
    case east
    case west
}

var dirc = dirction.north
dirc.hashValue

// switch 匹配枚举
switch dirc {
case .north:
    print("dsljdl")
case .south:
    print("dsljdl21")
case .east:
    print("dslj323dl")
default:
    print("default")
}

// 闭包
let axax = {
    print("这是闭包")
}

axax()

let add:(Int,Int)->(Int)={
    (a:Int,b:Int)-> Int in
    return a+b
}

add(2,5)

let add1:(Int,Int)->(Int)={
    (a:Int,b:Int)-> Int in
     a+b
}

add1(2,7)

let xxx:()->(Int)={
   return 500
}
xxx()

// 方法中的闭包
func text(name:String,block:()->(Void),block1:()->(Void)){
    print("\(name)")
    block()
    block1()
}

text(name: "战三", block: { () -> (Void) in
    print("dhslaj")
},block1: { () -> (Void) in
    print("代理商垃圾")
})

//text(name: "张飒") { () -> (Void) in
//    print("闭包惺惺惜惺惺")
//}


// 类

class Person{
    var name:String?="3"
    var age:Int = 4
}

var person = Person()
person.name = "1231"
print(person.age)

// 结构体
struct stud3ent{
    var name:String = "圣诞节啊啊"
    var age:Int = 14
}

let s = stud3ent()
s.age

let s12 = stud3ent(name:"weqw",age:2121)
print(s12)

// 类是引用类型，结构体是值类型，
// 这种情况下结构体s34和s 是互相独立的，修改其中一个，另一个不受影响(复制关系)
var s34 = s


//存储属性
class Person1{
    let name:String = "张飒"
    var age:Int = 15
}
let person1 = Person1()
person1.age = 20
person1.name

// 延迟属性
// 使用时才初始化 lazy
class Son{
    lazy var p = Person()
}

let ssss = Son()

ssss.p.age

// 计算属性
class Square{
    var width:Double = 0.0
    var girth:Double {
        get{
            return width*4
        }
//        set(newGirth){
//            width = newGirth/4
//        }
        set{
            width = newValue/4
        }
    }
}

let sq = Square()
sq.width = 10.0
print(sq.girth)
sq.girth = 200.0
print(sq.width)
print(sq.girth)

//计算属性的变量是不固定的说以只能用var修饰

//下面的写法 会造成死循环
//class Num{
//    var width:Int{
//        get{
//            return self.width
//        }
//        set{
//            self.width = newValue
//        }
//    }
//}

// 只读计算属性
class Square1{
    var width:Double = 0.0
    var girth:Double{
        get{
            return width*4
        }
    }
}

var gr=Square1()
gr.width = 10
//gr.girth = 10 无法赋值，只读属性


//类型属性
//用class修饰的属性就是类型属性，只能是计算属性，不能是存储属性
class Circle{
    // 类型属性
    class var PI: Double {
        return 3.14
    }
    // 类方法
    class func num(a:Int,b:Int)->(Int) {
        return a+b
    }
}
var cc = Circle()
//cc.PI 这样是无法调用的,只能使用类名调用
Circle.PI
Circle.num(a: 1, b: 4)

// 枚举中的方法使用
enum num2{
    case L
    func conut2(num1:Int,num2:Int)->Int{
        return num1+num2
    }
}
let n1 = num2.L.conut2(num1: 4, num2: 3)

// 结构体中方法的使用
struct num3{
    func count3(num1:Int,num2:Int)->Int{
        return num1+num2
    }
}
let n2 = num3()
n2.count3(num1: 4, num2: 8)

// 继承
class Father{
    var age = 16
    var name = "3121"
    func result() -> Void {
        print("我是父类")
    }
}

class Son2:Father{
    
}

let ss = Son2()
ss.result()

// 方法重写
class Person12{
    var name:String = ""
    var age:Int?
    //构造
    init(name:String,age:Int) {
        self.name = name
        self.age = age
        print(self.name,self.age!)
    }
}

class Son12:Person12{
    var height:Float?
    var weight:Float?
    override init(name: String, age: Int) {
        super.init(name: name, age: age)
        height = 123.5
        weight = 234.7
    }
}

let s122 = Son12(name:"dsada",age:14)

s122.height
s122.weight

// 方法重载

class Student:Person12{
    var sex:String?
     init(name: String, age: Int,sex:String) {
       super.init(name: name, age: age)
        self.sex = sex
    }
}

let ss122 = Student(name: "dlsja", age: 25, sex: "nv")

ss122.sex

//隐士构造方法
class cat{
    var age = 0
}

let c = cat()

// 指定构造方法
class Pxqw{
    var name:String = ""
    //无参构造方法
    init() {
        name = "xdsdsd"
    }
    // 有参构造方法
    init(name:String) {
        self.name = name
    }
    //遍历构造方法
    convenience init(name:String,height:Int){
        self.init(name:name)
        print(height)
    }
}
let px = Pxqw()
px.name

let px2 = Pxqw(name: "lwjwlew")
px2.name

let px3 = Pxqw(name: "123qwe", height: 43)
px3.name

// 协议
protocol Pro{
    func text()
}

// 普通类继承协议
class Perxx:Pro{
    func text() {
        print("协议类似接口")
    }
    
    
}

let pxxs = Perxx()
pxxs.text()

// 结构体继承协议
struct Perss:Pro{
    func text() {
        print("协议类似接口")
    }
}

// 枚举继承协议
enum Vum:Pro{
    case blue
    func text() {
        print("枚举协议")
    }
}

let nx = Vum.blue
nx.text()

// 协议可以继承协议


// 协议属性
protocol Prox{
    var name:String{get set}
    var age:Int{get}
    static var status:Int{set get}
}

struct ster:Prox{
    var sterName:String = ""
    var name: String {
        set{
            sterName = newValue
        }
        get{
            return sterName
        }
    }
    
    var age: Int{
        get{
            return 18
        }
    }
    
    static var status: Int=1
}
let sxzsd = ster(sterName: "jack")
print(sxzsd)
sxzsd.age

ster.status

// 结构体和枚举中的方法是不能直接操作变量的,所以使用变异方法
struct Pxsdt{
    var x:Int = 0
    var y:Int = 0
    
    // 变异方法
    mutating func cont(x:Int,y:Int) {
        self.x = x
        self.y = y
    }
}

enum Pointxx{
    case off
    case no
    mutating func next(){
        switch self {
        case .off:
            self = .no
        case .no:
            self = .off
        default:
            print(".......")
        }
    }
}
var p232 = Pointxx.off
p232.next()

// 协议的构造方法
protocol initA{
    init(name:String)
}

class Jxksk:initA{
    // 类似重写
    required init(name:String) {
        print("实现是鲁大师")
    }
}

let xszx = Jxksk(name: "sldjldaj")

// 可选协议

@objc protocol Prll{
    @objc optional func enu()// 不一定要实现的方法
    func text()
}

class Pkxisk:Prll{
    func text() {
        
    }

}

// 委托协议
// 协议
protocol Work{
    func text()
}

//委托方：店家
class Prxianxi{
    var delegate:Work?
    func result(){
        print("外卖已做好")
        if ((delegate?.text()) != nil){
            print("已经去送外卖")
        }
    }
}

// 代理方：送外卖的
class Studentewe:Work{
    func text(){
        print("马上过来那外卖")
    }
}

let prx = Prxianxi()

let stu = Studentewe()
// 委托和代理关联
prx.delegate = stu

prx.result()


// 扩展
class Box{
    func num(x:Int,y:Int)->Int{
        return x+y
    }
}

// 扩展Box类的方法
extension Box:Work{
    func text() {
        
    }
    
    func num1(x:Int,y:Int)->Int{
        return x*y
    }
}

let box = Box()
box.num(x: 4, y: 3)
box.num1(x: 4, y: 5)
