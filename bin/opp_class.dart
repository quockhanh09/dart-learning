import 'dart:math';
// ignore_for_file: public_member_api_docs, sort_constructors_first
//! 1. OOP - Object Oriented Programming
// Lập trình hướng đối tượng là kiểu lập trình xoay quanh các object (đối tượng),
// lấy object làm trọng

//! 2. Vậy đối tượng là gì?
// Hiểu đơn giản đối tượng là 1 thực thể, sinh vật, đồ vật, ...
// sở hữu những tính chất và có thể có hành động khác nhau

// ví dụ: Car, People, Employee, Student, Animal
// Trong một đối tượng sẽ có các attribute (field, properties) và các method,
// có thể hiểu attribute các thuộc tính, tính chất
// và method là các phương thức, chức năng mà đối tượng đó có thể làm.

//! 3. Class
// Lớp là một bản thiết kế cho đối tượng. Class định nghĩa các thuộc tính (attribute) và phương thức (method) mà đối tượng sẽ có.
// Trong Dart, bạn tạo một lớp bằng cách sử dụng từ khóa class.

// class Person {
//   //! 4. Properties
//   // Là các biến bạn khai báo trong class
//   // để định nghĩa các thuộc tính (tính chất, đặc điểm) mà class đó có
//   final String name;
//   final int age;
//   final double height;
//   final String nationality;

//   //! 5. Constructor
//   // Constructor là một hàm đặc biệt được gọi khi một đối tượng mới của lớp được tạo ra.
//   // Bạn có thể sử dụng constructor để khởi tạo giá trị cho các thuộc tính của đối tượng.
//   // Constructor mặc định trong Dart là một hàm có tên trùng với tên của lớp
//   Person(this.name, this.age, this.height, this.nationality);

//   //! 6. Method
//   // Method là một hàm (function) được định nghĩa bên trong class
//   // và hoạt động trên các đối tượng của class đó

//   // Method trong Dart tương tự như các hàm bình thường,
//   // nhưng chúng có thể truy cập và thao tác với các thuộc tính (properties) của đối tượng mà chúng thuộc về.
//   void sayHello() {
//     print('Hello, my name is $name and I am $age years old.');
//   }

//   void snore() {
//     print("zzz.zzzzz....zzzzz...zzz");
//   }
// }

//! 7. Đối tượng
// Đối tượng là một thể hiện cụ thể của một lớp
// Bạn có thể tạo nhiều đối tượng từ cùng một lớp,
// và mỗi đối tượng có thể có các giá trị thuộc tính riêng biệt.
// void main(List<String> args) {
//   // Object là 1 phiên bản hiện hữu của class, có thể gọi là instance
//   // Khởi tạo đối tượng chính là tạo ra 1 đối tượng mới bằng cách gọi hàm khởi tạo () của Class đó
//   var alice = Person('alice', 30, 170, "USA");
//   var huy = Person('Huy', 26, 175, "Vietnam");
//   alice.sayHello(); // In ra: Hello, my name is Alice and I am 30 years old.
//   huy.sayHello();
// }

//! 8. Bài tập
//? Bài tập 1: Quản lý thông tin nhân viên
// Yêu cầu:
//?  - Tạo một lớp Employee với các thuộc tính: name, age, và position.
//?  - Tạo một constructor để khởi tạo các thuộc tính.
//?  - Tạo một phương thức displayInfo() để in thông tin nhân viên.

// class Employee {
//   String name;
//   int age;
//   String position;

//   Employee(this.name, this.age, this.position);

//   void displayInfo() {
//     print("Nhân viên $name, $age tuổi, làm vị trí $position");
//   }
// }

// void main(List<String> args) {
//   final employee1 = Employee("Huy", 26, "Flutter developer");
//   employee1.displayInfo();
//   final employee2 = Employee("Việt", 25, "Mobile developer");
//   employee2.displayInfo();
// }

//! 10. Ưu điểm của OOP
// - OOP giúp mô hình hóa các cấu trúc, gom lại thành một object để tiện sử dụng.
// - OOP hạn chế việc duplicate code, dễ dàng thêm bớt, chỉnh sửa các thuộc tính một cách hàng loạt
// - Có tính mở rộng cao
// - Có tính bảo mật cao bằng việc sử dụng các từ khóa kiểm soát access. (sẽ nói ở bài 9)

//! 11. 4 đặc tính của OOP
// Trong lập trình hướng đối tượng (OOP), có 4 đặc tính cơ bản giúp xác định cách thức
// mà các đối tượng và lớp hoạt động trong một chương trình
// 4 đặc tính này là:
//? - Đóng gói (Encapsulation),
//? - Kế thừa (Inheritance),
//? - Đa hình (Polymorphism)
//? - Trừu tượng hoá (Abstraction)

//? Đóng gói
// Đóng gói là quá trình ẩn các chi tiết triển khai của một lớp
// và chỉ công khai những gì cần thiết thông qua các phương thức công khai (public methods)
// Điều này bảo vệ dữ liệu khỏi việc truy cập trái phép
// và giúp bạn kiểm soát tốt hơn cách dữ liệu được sử dụng trong chương trình.

// Cách hoạt động trong Dart:
// 1. Bạn sử dụng các thuộc tính riêng tư (private) bằng cách thêm dấu gạch dưới _ trước tên thuộc tính hoặc phương thức.
//   Điều này làm cho các thành phần đó chỉ có thể truy cập được từ bên trong lớp.
// 2. Các phương thức getter và setter thường được sử dụng để cung cấp quyền truy cập có kiểm soát đến các thuộc tính riêng tư.

// class BankAccount {
//   final String _accountNumber;
//   double _balance;

//   BankAccount(this._accountNumber, this._balance);

//   // Getter cho số tài khoản
//   String get bankNumber => _accountNumber;

//   // Getter cho số dư
//   double get totalBalance => _balance;

//   // Method để gửi tiền
//   void deposit(double amount) {
//     if (amount > 0) {
//       _balance += amount;
//     }
//   }

//   set depositVer2(double amount){
//     if (amount > 0) {
//       _balance += amount;
//     }
//   }

//   // Method để rút tiền
//   void withdraw(double amount) {
//     if (amount > 0 && amount <= _balance) {
//       _balance -= amount;
//     }
//   }

//   set withdrawVer2(double amount){
//     if (amount > 0 && amount <= _balance) {
//       _balance -= amount;
//     }
//   }
// }

//! Bài tập về tính Đóng gói (Encapsulation)
// Tạo một lớp Car để quản lý thông tin xe hơi.
// Lớp này có các thuộc tính riêng tư và các phương thức công khai để truy cập (getter) và thay đổi giá trị (setter) của các thuộc tính đó.

// Yêu cầu:
//  - Lớp Car có các thuộc tính riêng tư _brand, _model, và _year.
//  - Sử dụng các phương thức getter và setter để truy cập và thay đổi giá trị của các thuộc tính.
//  - Tạo phương thức displayInfo() để hiển thị thông tin của xe.
// class Car {
//   String _brand;
//   final String _model;
//   int _year;

//   Car(this._brand, this._model, this._year);

//   String get brandCar => _brand;

//   set changeBrand(String newBrand) => _brand = newBrand;

//   set changeYear(int newYear) {
//     _year = newYear;
//   }

//   String get modelCar => _model;

//   void displayInfo() {
//     print("Xe $_brand $_model sản xuất năm $_year");
//   }
// }

//? Kế thừa (Inheritance)
// Kế thừa cho phép một lớp mới (lớp con - subclass) kế thừa các thuộc tính và phương thức của một lớp hiện có (lớp cha - superclass)
// Điều này giúp tái sử dụng mã và tạo ra các cấu trúc lớp phức tạp hơn từ các lớp cơ bản.

//? Cách hoạt động:
// - Sử dụng từ khóa extends để định nghĩa một lớp con kế thừa từ lớp cha.
// - Lớp con có thể kế thừa tất cả các thuộc tính và phương thức từ lớp cha, và có thể ghi đè (override) các phương thức để thay đổi hành vi.

// class Animal {
//   void eat() {
//     print('Animal is eating');
//   }

//   void run() {
//     print('Animal is running');
//   }
// }

// class Cat extends Animal {
//   @override
//   void eat() {
//     print("A cat is eating a fish");
//   }

//   void meow() {
//     print('Dog is meoww...');
//   }

//   @override
//   void run() {
//     print("A cat runs and jumps");
//   }
// }

// class Dog extends Cat {
//   void bark() {
//     print('Dog is barking');
//   }
// }

//? Giải thích:
// Trong ví dụ này, lớp Dog kế thừa từ lớp Animal và có thể sử dụng hoặc ghi đè các phương thức của lớp cha.
// Ngoài ra, Dog có thể thêm các phương thức mới như bark(), mở rộng chức năng từ lớp Animal.

// void main() {
//   var dog = Dog();
//   dog.eat();  // Sử dụng phương thức ghi đè từ lớp con
//   dog.bark(); // Sử dụng phương thức riêng của lớp con
// }

//! Bài tập tính Kế thừa (Inheritance)
// Tạo một lớp Employee và kế thừa nó để tạo ra các lớp con Manager và Developer.
// Yêu cầu:
//  - Lớp Employee có các thuộc tính name, age, và phương thức work().
//  - Lớp Manager kế thừa từ Employee và ghi đè (override) phương thức work() để in ra "Managing projects".
//  - Lớp Developer kế thừa từ Employee và ghi đè phương thức work() để in ra "Writing code".

// class Developer extends Employee {
//   Developer(super.name, super.age);

//   @override
//   void work() {
//     print("Writing code");
//   }
// }

// class Employee {
//   final String name;
//   final int age;

//   Employee(this.name, this.age);

//   void work() {
//     print("employee is working");
//   }
// }

// class Manager extends Employee {
//   Manager(super.name, super.age);
//   @override
//   void work() {
//     print("Managing projects");
//   }


  //! Đóng gói (Encapsulation)
// class BankAccount {
//   final String _accountNumber;
//   double _balance;
//   bool _isShowingBalance;

//   BankAccount(this._accountNumber, this._balance,
//       [this._isShowingBalance = false]);
// // Getter cho số dư
//   String get balance => _isShowingBalance ? _balance.toString() : "*********";

//   // Getter cho số tài khoản
//   String get bankNumber => _accountNumber;

//   set deposit2(double amount) {
//     if (amount > 0) {
//       _balance += amount;
//     }
//   }
// set isShowingBalance(bool newValue) => _isShowingBalance = newValue;

//   set withdraw2(double amount) {
//     if (amount > 0 && amount <= _balance) {
//       _balance -= amount;
//     }
//   }
// // Method để gửi tiền
//   void deposit(double amount) {
//     if (amount > 0) {
//       _balance += amount;
//     }
//   }

//   // Method để rút tiền
//   void withdraw(double amount) {
//     if (amount > 0 && amount <= _balance) {
//       _balance -= amount;
//     }
//   }
// }
// class Employee {
//   final String _id;
//   double _salary;

//   Employee(this._id, this._salary);

//   //! id
// get: để lấy giá trị
//   String get idEmployee => _id;
// set: ko thể gán giá trị mới do đó ko có set

// get
//   double get salary => _salary;

//   set salaryImporting(double amount) => _salary = _salary + amount;
// }
// final huyBankAccount = BankAccount("666888999", 9000);
// print("Stk: ${huyBankAccount.bankNumber}");
// print("Số dư: ${huyBankAccount.balance}");
// huyBankAccount.isShowingBalance = true;
// print("Số dư: ${huyBankAccount.balance}");
// deposit
// print("Nạp 1000");
// huyBankAccount.deposit(1000);
// print("Số dư: ${huyBankAccount.balance}");
// deposit ver 2 sử dụng set
 // print("Nạp 2000");
// huyBankAccount.deposit2 = 2000;
// print("Số dư: ${huyBankAccount.balance}");
// withdraw
// print("Rút 500");
// huyBankAccount.withdraw(500);
// print("Số dư: ${huyBankAccount.balance}");
// withdraw ver 2 sử dụng set
// print("Rút 200");
// huyBankAccount.withdraw2 = 200;
// print("Số dư: ${huyBankAccount.balance}");
//   final employee = Employee("abc1", 0);
//   print("id employee: ${employee.idEmployee}");
//   print("salary employee: ${employee.salary}");

//! Tính đa hình
// Cho phép các đối tượng con thực thi các chức năng dc kế thừa từ lớp cha
// theo 1 cách khác, riêng biệt
// Điều này có nghĩa là lớp con có thể sử dụng một phương thức theo nhiều cách khác nhau

//? Cách hoạt động trong Dart:
// Trong các lớp con, Đa hình thường được thể hiện qua việc ghi đè (override) phương thức dc kế thừa từ lớp cha,
//    nơi mà mỗi lớp con có thể triển khai phương thức theo cách riêng của mình.
// void main() {
//   Animal dog = Dog();
//   Animal cat = Cat();

//   dog.makeSound(); // In ra: Gâu gâu!
//   cat.makeSound(); // In ra: Mèo méo meo mèo meo!
// }

// class Animal {
//   void makeSound() {
//     print('Animal sound');
//   }
// }
// class Cat extends Animal {
//   @override
//   void makeSound() {
//     print('Mèo méo meo mèo meo =))))');
//   }
// }

// class Dog extends Animal {
//   @override
//   void makeSound() {
//     print('Gâu gâu!');
//   }
// }



// }


//? Đa hình (Polymorphism)
// Đa hình cho phép các đối tượng khác nhau thực thi các hành vi khác nhau thông qua cùng một giao diện chung
// Điều này có nghĩa là bạn có thể sử dụng một phương thức theo nhiều cách khác nhau, tùy thuộc vào đối tượng cụ thể thực thi nó.

//? Cách hoạt động trong Dart:
// Đa hình thường được thể hiện qua việc ghi đè phương thức (override) trong các lớp con,
//    nơi mà mỗi lớp con có thể triển khai phương thức theo cách riêng của mình.
// class Animal {
//   void makeSound() {
//     print('Animal sound');
//   }
// }

// class Dog extends Animal {
//   @override
//   void makeSound() {
//     print('Woof!');
//   }
// }

// class Cat extends Animal {
//   @override
//   void makeSound() {
//     print('Meow!');
//   }
// }

//? Giải thích: Trong ví dụ này, phương thức makeSound() được triển khai khác nhau trong lớp Dog và Cat.
// Khi gọi makeSound() trên các đối tượng dog và cat, kết quả là khác nhau, mặc dù cả hai đều được tham chiếu qua lớp Animal.

// void main() {
//   Animal dog = Dog();
//   Animal cat = Cat();

//   dog.makeSound(); // In ra: Woof!
//   cat.makeSound(); // In ra: Meow!
// }

//! Bài tập tính Đa hình (Polymorphism)
// Tạo một lớp cha Shape và các lớp con Circle và Rectangle. Sử dụng đa hình để tính diện tích của các hình.
// Yêu cầu:
//  - Lớp Shape có một phương thức area() trừu tượng.
//  - Lớp Circle và Rectangle kế thừa từ Shape và triển khai phương thức area().
//  - Viết một hàm để tính tổng diện tích của nhiều hình khác nhau (sử dụng danh sách các đối tượng Shape).

//? Trừu tượng hóa (Abstraction)
// Trừu tượng hóa là quá trình ẩn đi các chi tiết không cần thiết và chỉ hiển thị những phần quan trọng của đối tượng
//  tập trung vào các khía cạnh quan trọng của đối tượng mà không cần phải lo lắng về các chi tiết triển khai phức tạp.

//? Cách hoạt động trong Dart:
// Trừu tượng hóa được thực hiện thông qua các lớp trừu tượng (abstract classes) hoặc giao diện (interfaces).
// Một lớp trừu tượng không thể được khởi tạo trực tiếp mà chỉ có thể làm lớp cha cho các lớp con.
// Các lớp con phải triển khai (implement) các phương thức trừu tượng của lớp cha.

// abstract class Shape {
//   double getArea();  // Phương thức trừu tượng
// }

// class Circle extends Shape {
//   double radius;

//   Circle(this.radius);

//   @override
//   double getArea() {
//     return 3.14 * radius * radius;
//   }
// }

// class Rectangle extends Shape {
//   double width;
//   double height;

//   Rectangle(this.width, this.height);

//   @override
//   double getArea() {
//     return width * height;
//   }


// }

//? Giải thích: Trong ví dụ này, lớp Shape là một lớp trừu tượng với phương thức trừu tượng getArea().
//  Lớp Circle và Rectangle kế thừa từ Shape và triển khai phương thức getArea() theo cách riêng của chúng.
//  Điều này cho phép chúng ta tính diện tích của các hình khác nhau mà không cần biết chi tiết về cách chúng được triển khai.

// void main() {
//   Shape circle = Circle(5);
//   Shape rectangle = Rectangle(4, 5);

//   print('Diện tích hình tròn: ${circle.getArea()}');  // In ra: 78.5
//   print('Diện tích hình chữ nhật: ${rectangle.getArea()}');  // In ra: 20
// }

//! Bài tập tính Trừu tượng hóa (Abstraction)
// Tạo một lớp trừu tượng Animal và các lớp con Dog và Bird.
// Lớp trừu tượng này sẽ định nghĩa các phương thức mà các lớp con phải triển khai.

// Yêu cầu:
//  - Lớp Animal là một lớp trừu tượng với các phương thức makeSound() và move().
//  - Lớp Dog và Bird kế thừa từ Animal và triển khai các phương thức makeSound() và move().
//  - Tạo một danh sách các đối tượng Animal và gọi các phương thức makeSound() và move() trên các đối tượng này.


//! 1. Tính trừu tượng
// Dùng để trừu tượng hoá các yêu 
//? Cách hoạt động trong Dart:
//?   - Trừu tượng hóa được thực hiện thông qua các lớp trừu tượng (abstract classes)
//!   - Abstract class không thể được khởi tạo trực tiếp
//?      mà chỉ có thể làm lớp cha cho các lớp con.
//?   - Các lớp con sẽ kế thừa (extends) hoặc thực thi (implements) các phương thức trừu tượng từ abstract class cha.

//! 2. Abstract class
// abstract class là class trừu tượng, các class khác sẽ kế thừa hoặc thực thi từ class này.
// Mục đích của abstract class giống như 1 bản thiết kế
//  dùng để chỉ định các properties, method phải có trong class con, chứ ko quan tâm nội dung method
//! 2. Abstract class
//! 3. extends
//? Các lớp con sẽ kế thừa (extends) các phương thức trừu tượng từ abstract class cha
abstract class Vehicle {
  // Abstract Class có thể chứa các thuộc tính có hoặc không có giá trị khởi tạo.
  int odometer;
  // Khi bạn định nghĩa thuộc tính của class, bạn bắt buộc phải có constructor
  Vehicle({required this.odometer});
  // Vehicle({this.odometer = 10});

  // Bạn có thể định nghĩa các thuộc tính cụ thể trong abstract class và cung cấp giá trị khởi tạo cho chúng.
  // Các lớp con có thể kế thừa và sử dụng trực tiếp các thuộc tính này.

  // method chỉ khai báo tên, hoàn toàn ko có body
  void moveForward(int meter);
}


// void main(List<String> args) {
//   // Abstract class ko thể sử dụng trực tiếp (ko thể khởi tạo), mà phải sử dụng thông qua các lớp con
//   final car = Car(seatCount: 4, odometer: 20);
//   car.moveForward(12);
// }
// class Car extends Vehicle {
//   // Nếu thuộc tính trong abstract class không có giá trị khởi tạo,
//   // thì lớp con cần phải khởi tạo chúng khi tạo đối tượng.
//   final int seatCount;
//   Car({required this.seatCount, required super.odometer});

//   // class con bắt buộc phải override method moveForward.
//   // Bởi vì class cha là abstract nên chỉ defined tên method chứ ko defined nội dung method
//   @override
//   void moveForward(int meter) {
//     print("Car is moving $meter");
//   }
// }

//! Bài tập: Abstraction sử dụng extends
//? Yêu cầu:
//  - Tạo lớp trừu tượng Employee với các thuộc tính name và age.

//  - Định nghĩa phương thức trừu tượng calculateSalary() trong lớp Employee.

//  - Tạo lớp FullTimeEmployee kế thừa từ Employee với thuộc tính bổ sung monthlySalary
//    và triển khai phương thức calculateSalary() trả về lương hàng tháng.

//  - Tạo lớp PartTimeEmployee kế thừa từ Employee với thuộc tính bổ sung hourlyRate và hoursWorked.
//    Triển khai phương thức calculateSalary() trả về lương dựa trên số giờ làm việc và mức lương theo giờ.

//? Kết quả mong đợi:
// In ra lương của nhân viên toàn thời gian và bán thời gian,
// được tính toán dựa trên cách triển khai cụ thể trong từng lớp con.
//! Giải bài tập Abstraction sử dụng extends: 
void main(List<String> args) {
  final fullTimeEmployee =
      FullTimeEmployee(montlySalary: 10000000, age: 20, name: "Hùng");
  print(
      "Số lương của nhân viên full time ${fullTimeEmployee.name} là ${fullTimeEmployee.calculateSalary()}");

  final partTimeEmployee = PartTimeEmployee(
      hourlyRate: 50000, hoursWorked: 123, age: 22, name: "Huy");
  print(
      "Số lương của nhân viên part time ${partTimeEmployee.name} là ${partTimeEmployee.calculateSalary()}");
}
abstract class Employee {
  String name;
  int age;
  Employee({required this.name, required this.age});

  double calculateSalary();
}
class FullTimeEmployee extends Employee {
  final double montlySalary;
  FullTimeEmployee(
      {required this.montlySalary, required super.age, required super.name});

  @override
  double calculateSalary() {
    return montlySalary;
  }
}
class PartTimeEmployee extends Employee {
  final double hourlyRate;
  final double hoursWorked;
  PartTimeEmployee({
    required this.hourlyRate,
    required this.hoursWorked,
    required super.age,
    required super.name,
  });

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}

//! 4. Interface
//! Đặc điểm Interface
// Khi sử dụng implements, lớp mới phải triển khai
// tất cả các phương thức và thuộc tính của Interface nó đang triển khai, ngay cả khi lớp đó đã có triển khai mặc định.
abstract class Animal {
  // Khi bạn định nghĩa thuộc tính trong lớp và sau đó sử dụng lớp này như một interface
  // các lớp thực hiện (implementing class) phải triển khai (thường là cung cấp giá trị cho)
  // tất cả các thuộc tính và phương thức được định nghĩa trong Interface.

  // Khác với abstract class, các thuộc tính trong interface dù có giá trị khởi tạo.
  // Lớp con thực hiện phải cung cấp giá trị cho các thuộc tính đó.

  String name;
  int age;
  Animal({
    this.name = "john",
    this.age = 1,
  });
  void makeSound(){
    print('Animal sound');
  }

  void sleep() {
    print('Animal is sleeping');
  }
}
class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }

  @override
  void sleep() {
    print('Dog is sleeping');
  }

  @override
  int age;

  @override
  String name;

  Dog(this.name, this.age);
}

//! Bài tập Interface sử dụng implements
// Bạn sẽ tạo một Interface Shape để đại diện cho các hình học
// Sau đó, bạn sẽ tạo các lớp Circle và Square thực hiện giao diện này.
// Mỗi lớp sẽ tính diện tích của hình tương ứng.

//? Yêu cầu:
//  - Tạo Interface Shape với phương thức getArea() mà không có phần triển khai.

//  - Tạo lớp Circle thực hiện Interface Shape.
//    Lớp này có thuộc tính radius và triển khai phương thức getArea() để tính diện tích hình tròn.
//    Diện tích hình tròn = Pi(3.14) x radius x radius

//  - Tạo lớp Square thực hiện Interface Shape.
//    Lớp này có thuộc tính side và triển khai phương thức getArea() để tính diện tích hình vuông.
//    Diện tích hình vuông = cạnh x cạnh

//  - Trong phương thức main(), tạo danh sách các đối tượng Shape và in ra diện tích của mỗi hình.
//? kết quả mong đợi
// In ra diện tích của hình tròn và hình vuông,
// được tính toán dựa trên cách triển khai cụ thể trong mỗi lớp thực hiện Interface Shape.

// class Shape {
//   // double getArea();
//   double getArea() {
//     return 1 + 1;
//   }
// }

// class Size {
//   double getSize() {
//     return 1 + 1;
//   }
// }

// class Circle implements Shape, Size {
//   final double radius;
//   Circle({
//     required this.radius,
//   });

//   @override
//   double getArea() {
//     return pi * radius * radius;
//   }

//   @override
//   double getSize() {
//     return 20 * 20;
//   }

// @override
// double getArea() {
//   return pi * radius * radius;
// }
// }

// class Square implements Shape {
//   final double side;
//   Square({
//     required this.side,
//   });
//   @override
//   double getArea() {
//     return side * side;
//   }
// }
// void main(List<String> args) {
//   final circle = Circle(radius: 10);
//   print("Diện tích hình tròn: ${circle.getArea()}");
//   final square = Square(side: 5);
//   print("Diện tích của hình vuông là: ${square.getArea()}");
// }

//! So sánh extends và implements
//? extends:
//    - Được sử dụng để kế thừa từ một lớp cha duy nhất.
//    - Lớp con có thể sử dụng lại mã và ghi đè các phương thức của lớp cha.
//? implements:
//    - Được sử dụng để thực hiện một Interface hoặc lớp,
//    - Yêu cầu phải triển khai tất cả các phương thức được định nghĩa mà không kế thừa mã từ lớp đó.
//    - Lớp có thể thực hiện nhiều giao diện hoặc lớp cùng lúc.

// Interface sẽ định nghĩa các hành động (method) và thuộc tính (properties) mà các lớp con bắt buộc phải làm

// Abstract định nghĩa các hành động (method) và thuộc tính (properties) mà các lớp con phải làm
// nếu các method và property ở abstract chưa dc triển khai hoặc gán giá trị

class Circle extends Shape {}

class Circle2 implements Shape2 {
  @override
  double size2;
  Circle2({
    required this.size2,
  });

  @override
  double getArea2() {
    return 10;
  }
}
abstract class Shape {
  double size;
  Shape({
    this.size = 10,
  });
  double getArea() {
    return 1;
  }
}

class Shape2 {
  double size2;
  Shape2({
    this.size2 = 10,
  });
  double getArea2() {
    return 10;
  }
}