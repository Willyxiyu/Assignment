import UIKit

//----------------------------------------
//Object-Oriented Swift
//----------------------------------------------------------------------
//1. Declare a class Animal with property gender and method eat(). The data type of gender should be enum Gender as below and when you call eat() method, it will print [I eat everything!]

//8/10
//- Missing property gender [revised]
//- eat() is a method of Animal, not global function [revised],global function can use everywhere, methods are functions within custom types(like in class or enum)

//
class Animal {

    var animal: String
    var gender = Gender.self

    func eat() {
         print("I eat everything!")
}


    init(animal : String) {
        self.animal = animal
    }

    enum Gender {
        case male
        case female
        case undefined
    }

}



//----------------------------------------------------------------------


//2. Declare three classes: Elephant, Tiger, Horse that inherits from Animal and override the eat method to print what they usually eat.
//8/10 you could keep one class Animal for Object-Oriented Q1-Q3.[revised]

class Elephant : Animal {
    override func eat() {
        print("I eat durian")
    }
    }
class Tiger : Animal {
    override func eat() {
        print("I eat deer")
    }
    }
class Horse : Animal {
    override func eat() {
        print("I eat grass")
    }
    }


//----------------------------------------------------------------------


//3. Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger, elephant, and horse are instances of class Tiger, Elephant, and Horse, respectively.

//8/10 In playground, you could keep one class Animal for Object-Oriented Q1-Q3.- Please try hard to make the code below work in your playground. Note that tiger, elephant, and horse are instances of class Tiger, Elephant, and Horse, respectively. If you don't know what instances means, please google it.


class Zoo {
    var weeklyHot: Animal
    init (weeklyHot: Animal ) {
        self.weeklyHot = zoo.weeklyHot
    }
}

var tiger = Tiger.self
var elephant = Elephant.self
var horse = Horse.self


let zoo = Zoo(weeklyHot:Tiger(animal: tiger))
    zoo.weeklyHot = tiger
    zoo.weeklyHot = elephant
    zoo.weeklyHot = horse



//----------------------------------------------------------------------


//4. What’s the difference between Struct and Class ?
//Swift 中的 Class 與 Struct 有很多相同的地方
//例如他們兩者都能：
//定義屬性來儲存值
//定義方法來提供功能
//定義初始化來設置它們的初始狀態

//Class 有，但 Struct 卻沒有的功能：
//繼承可以讓一個 Class 繼承另一個 Class 的特性
//類型轉換讓你能夠在運行時檢查和解釋 Class 實例的類型。


//----------------------------------------------------------------------


//5.  What’s the difference between instance method and type method ?
//實例方法(Instance Methods)
//實例方法是屬於某個特定類別、結構或者列舉型別實例的方法。實例方法提供存取和修改實例屬性的方法或提供與實例目的相關的功能，並以此來支撐實例的功能。實例方法的語法與函式完全一致，實例方法要寫在它所屬的型別的前後大括號之間。實例方法能夠隱式存取它所屬型別的所有的其他實例方法和屬性。實例方法只能被它所屬的類別的某個特定實例呼叫。實例方法不能脫離於現存的實例而被呼叫。
//下面的範例，定義一個很簡單的類別Counter，Counter能被用來對一個動作發生的次數進行計數：
////
//class Counter {
//  var count = 0
//  func increment() {
//    count += 1
//  }
//  func incrementBy(amount: Int) {
//    count += amount
//  }
//  func reset() {
//    count = 0
//  }
//}
//let counter = Counter()
//counter.increment()


//型別方法(Type Methods)
//method)為定義在特定型別(類別、結構與列舉)上的方法。不是屬於實體，而是屬於這個型別(類別、結構或列舉)本身的方法，與實體方法一樣使用點語法(dotsyntax)呼叫。
//宣告型別方法時需要在func前加上關鍵字static，而以類別來說，還可以將static替換成class來允許子類別覆寫(override)父類別的類別方法。例子如下：

// 定義一個類別
//class SomeClass {
//    // 定義一個型別方法
//    class func someTypeMethod() {
//        print("型別方法")
//    }
//}
//
//// 呼叫一個型別方法
//SomeClass.someTypeMethod()


//----------------------------------------------------------------------


//6.What does Initilizer do in class and struct
//在class裡，沒有預設的Initilizer所以需要提供初始值
//class MyClass {
//    var student:String
//    init(student:String) {
//        self.student = student
//    }
//}

//在struct裡，有預設初始值
//struct MySturct {
//    var student:String
//}
//因此不用特別寫預設值，要寫也可以，可以自行生成一個，但除了原本的init()就不能用了，如果想使用就要自己生成
//struct MyStruct {
//    var student:String = "default"
//
//    init(){}
//    init(student: String){
//        self.student = student
//    }
//}


//----------------------------------------------------------------------


//7. What does self mean in an instance method and a type method ?
//用於消除訪問屬性，呼叫方法時所產生的歧義，當函式的引數名和自身的屬性名同名時，例如：
//class AClass {
//var greeting: String
//init(greeting: String) {
//// 使用self區分屬性和引數，前者是指var greeting，後者是指init(greeting)
//self.greeting = greeting
//}
//}
//在型別方法的方法體（body）中，self指向這個型別本身，而不是型別的某個實例。對於結構和列舉來說，這意味著你可以用self來消除靜態屬性和靜態方法參數之間的歧義。


//----------------------------------------------------------------------


//8.What’s the difference between reference type(參考型別 and value type（數值型別） ?
//數值型別 ── 每個實例保存資料一份獨立的備份。當這類型別被指派給一個變數或常數、或是被傳送到函式時，就會創建一個新的實例（備份）。
//參考型別 ── 每個實例共享資料的單一備份。當這類型別被初始化、被指派給一個變數或常數、或者是被傳送到函式時，就會回傳參考到相同的實例。
//在以下情況，我們可以使用數值型別：
//以 == 來比較實例的資料較為合理（一個雙等於運算符（==）是用來比較 數值的）
//你希望副本有獨立狀態
//資料將會被跨越多個執行序的程式碼使用，而你擔心資料會在其他執行序中被變更
//在以下情況，我們可以使用參考型別：
//以 === 來比較實例較為合理（ === 是用來確認兩個物件是否完全相同的，包括儲存資料的記憶體位置。）
//你希望創建一個共享、可變動的狀態


//-----------------------------------------------
//Enumerations and Optionals in Swift
//----------------------------------------------------------------------

//1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.

//● Please create an enum named Gasoline to model gasoline.
//● Every kind of gasoline has its price. Please create a method named getPrice in Gasoline enum that will return different prices depending on different gasoline.
//● Please establish raw values for Gasoline. The data type of raw value should be String. For example,Gasoline.oil92.rawValue should be 92
//8/10  getPrice() is a method of Gasoline, not global function. No parameter is needed for getPrice()[revised]

enum Gasoline: String {
        case gasoline92 = "92"
        case gasoline95 = "95"
        case gasoline98 = "98"
        case diesel     = "nil"

    func getPrice() {
    switch self {
    case .gasoline92:
        print("gasoline92Value")
    case .gasoline95:
        print("gasoline95Value")
    case .gasoline98:
        print("gasoline98Value")
    case .diesel:
        print("dieselValue")
    }
    }
}

//----------
//● Please explain what enum associated value is and how it works.
//Associated Value 除了case宣告的種類之外，還可以把值夾帶在enum變數中。先判斷變數屬於那個case，再透過(let name)取出夾帶在enum的值。

//enum SociaMediaPlatform {
//    case twitter(followers: Int)
//    case youtibe(subscribers: Int)
//    case instagram
//    case linkedlin
//}
//
//func getSponsorshipEligibility(for platform: SociaMediaPlatform) {
//    switch platform {
//
//    case .twitter(let followers) where followers > 1000:
//        print("YOU GOT IT!!!")
//
//    case .youtibe(let subscribers) where subscribers > 2000:
//        print("YOU EARNED IT!!!")
//
//    case .instagram, .linkedlin, .twitter, .youtibe:
//        print("幫ＱＱ")
//    }
//}
//getSponsorshipEligibility(for: .twitter(followers: 2000))
//getSponsorshipEligibility(for: .youtibe(subscribers: 20))

//----------------------------------------------------------------------
//2. Optional is a very special data type in Swift. Take var a:Int? = 10 for example, the value of a will be nil or Int. you should have learned how to deal with Optional.

//8/10 - Please create two classes, one is for Pet, the other is for People. And build up their relationship according to the requirement of assignments.- The way you use guard-let and if-let is correct.[]

//------------------
//● People would like to have pets,but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.

class Pet {
    var name: String = ""
}
class people {
    var pet : String?
}

if let catsName =  {
    print("My cat's name is \(catsName)")
}
//------------------
//● Please create a People instance and use guard let to unwrap the pet property.

var catsName: String?
catsName = "Xcode"

func peopleHasCat(name: String?) {

    guard let name = name else {
        print("I don't have cat")
        return
    }

    print("My cat's name is \(name)")
}
peopleHasCat(name: catsName)

//------------------
//● Please create another People instance and use if let to unwrap the pet property.

var catsName: String?
catsName = "Xcode"

if let name = catsName {
    print("my cat's name is \(name)")
} else {
    print("I don't recongize")
}


//----------------------------------------------------------------------
//Protocol in Swift
//----------------------------------------------------------------------
//1. Declare a struct Person with a name property type String and a protocol PoliceMan. There is only one method arrestCriminals with no argument and return void in the protocol.
//2. Make struct Person conform to PoliceMan protocol.
//3. Declare a protocol ToolMan with a method fixComputer that has no argument and return void.
//4. Add a property toolMan to the struct Person with data type ToolMan.
//5. Declare a struct named Engineer that conforms to the ToolMan protocol.
//6. Create a Person instance with the name Steven and also create the relative data you need to declare this instance.
// 8/10 - In playground, you could keep one struct Person for Protocol Q1-Q6.[revised]


protocol PoliceMan {
    func arrestCriminals()
    }

struct Person {
    let name: String
    let toolMan = ToolMan.self
    let steven = "Steven"
    
}

extension Person: PoliceMan {
    func arrestCriminals() { }
}

protocol ToolMan {
    func fixComputer()
    }
struct Engineer: ToolMan {
    func fixComputer() {
    }

    }


//----------------------------------------------------------------------
//Error Handling in Swift
//----------------------------------------------------------------------

enum GuessNumberGameError: Error {
    case wrongNumber
}

    class GuessNumerGame {
      var targetNumber = 10

        func guess(number: Int) throws {

      guard number == targetNumber else {
          throw GuessNumberGameError.wrongNumber
}
            print("Guess the right number: \(targetNumber)")
        }
    }
var game = GuessNumerGame()
do {
    try game.guess(number: 15)
}
    catch{
        print(error)

    }

//----------------------------------------------------------------------
