

  //? Function
//  - Là một khối code thực hiện một nhiệm vụ cụ thể
//    và có thể được gọi từ bất kỳ đâu trong chương trình.

//  - Functions thường đứng độc lập, không thuộc về bất kỳ đối tượng hay lớp nào.

//  - Functions có thể nhận tham số đầu vào và trả về kết quả.
// Function toàn cục
// void main() {
//   int result = add(5, 3); // Gọi function
//   print(result); // In ra: 8
// }

// int add(int a, int b) {
//   return a + b;
// }

//? Method
//  - Là một function nhưng gắn liền với một đối tượng hoặc class cụ thể.

//  - Methods là các thành phần của lớp hoặc đối tượng,
//    và có thể thao tác trên các thuộc tính của đối tượng hoặc lớp mà chúng thuộc về.

//  - Methods cũng có thể nhận tham số đầu vào và trả về kết quả.
// class Calculator {
// Instance method
// int add(int a, int b) {
//     return a + b;
//   }
// }
// void main() {
//   var calculator = Calculator();
//   int result = calculator.add(5, 3);  // Gọi method của đối tượng calculator
//   print(result);  // In ra: 8
// }

//? Static Method
//  - Static methods là methods được định nghĩa với từ khóa static
//    và thuộc về chính lớp đó thay vì các đối tượng cụ thể

//?  - Static methods có thể được gọi trực tiếp từ lớp mà không cần tạo đối tượng.
//?  - Chỉ có static variable mới có thể dc truy xuất, thao tác bên trong static method.

//  - Static methods có một số đặc điểm giống với functions, nhưng vẫn là một phần của lớp.

// class MathUtils {
// Static method
//   static int multiply(int a, int b) {
//     return a * b;
//   }
// }

// void main() {
//   int result = MathUtils.multiply(5, 3);  // Gọi static method mà không cần tạo đối tượng
//   print(result);  // In ra: 15
// }

// void main() {
//   int result =
//       MathUtils.multiply(5, 3); // Gọi static method mà không cần tạo đối tượng
//   print(result); // In ra: 15
// }
// class MathUtils {
//   // Static method
//   static int c = 20;

//   static int multiply(int a, int b) {
//     print("Giá trị của c là: ${c.toString()}");
//     return a * b;
//   }
// }

//! Khi nào sử dụng Function và Method:

//? Function:
//  Sử dụng khi bạn cần một khối mã thực hiện một tác vụ chung, không liên quan đến bất kỳ đối tượng cụ thể nào.

//? Method:
// Sử dụng khi bạn cần một khối mã liên quan đến một lớp hoặc đối tượng cụ thể,
// thường thao tác trên các thuộc tính của đối tượng đó.

//! Tham trị (Pass by Value)
// Tham trị là cách truyền giá trị của biến vào hàm.
// Điều này có nghĩa là hàm nhận một bản sao của giá trị đó
// và mọi thay đổi trên bản sao này sẽ không ảnh hưởng đến giá trị gốc bên ngoài hàm.

//? Kiểu dữ liệu nguyên thủy như int, String, bool, v.v., là immutable (bất biến)
//? ngoại trừ Object và Collections (List, Map, Set) => mutable type

//? Do đó, Kiểu dữ liệu nguyên thủy được truyền theo tham trị (pass by value)
//? có nghĩa là khi bạn gán hoặc truyền một biến kiểu dữ liệu nguyên thủy,
//? một bản sao của giá trị được tạo ra, và không có sự thay đổi nào trên giá trị gốc.
// void main() {
//   int x = 5;
//   print('Before x dc truyền vào hàm changeValue: $x'); // In ra: Before: 5

//   //? biến x được truyền vào hàm changeValue theo tham trị.
//   //? Hàm changeValue chỉ thay đổi bản sao của giá trị x,
//   //? vì vậy giá trị gốc của x không thay đổi sau khi gọi hàm.
//   changeValue(x);
//   print('After x dc truyền vào hàm changeValue: : $x'); // In ra: After: 5
// }

// void changeValue(int number) {
//   number = 10;
//   print("number inside changeValue() method: $number");
// }


//! Tham chiếu (Pass by Reference)
// Tham chiếu là cách truyền đối tượng (Object) vào hàm hoặc phương thức
// bằng cách truyền địa chỉ (tham chiếu) của đối tượng đó.

// Do đó, khi bạn thay đổi giá trị của đối tượng trong hàm, thay đổi đó
// sẽ ảnh hưởng đến đối tượng gốc bên ngoài hàm.
// //? đối tượng Person được truyền vào hàm changeName theo tham chiếu.
// void changeName(Person person) {
//   person.name = 'Alice';
// }

// class Person {
//   String name;

//   Person(this.name);
// }
// void main() {
//   Person p = Person('Bob');
//   print('Before: ${p.name}'); // In ra: Before: Bob

//   //? Khi hàm changeName thay đổi thuộc tính name của đối tượng Person,
//   //? thay đổi đó ảnh hưởng trực tiếp đến đối tượng p bên ngoài hàm.
//   changeName(p);

//   print('After: ${p.name}'); // In ra: After: Alice
// }

// Nếu sử dụng phép gán = cho 2 object.
// Thì chúng sẽ có mối liên kết tham chiếu,
// có nghĩa là vectorA và vectorB là 2 object riêng biệt,
// nhưng chúng lại sử dụng chung 1 vùng nhớ trên máy tính

// class Vector {
//   double? x;
//   double? y;
//   VectorVer2? vectorVer2;

//   Vector({this.x, this.y, this.vectorVer2});

//   //! Tham trị và method copyWith
//   // Developer thường viết thêm hàm copyWith
//   // để thực hiện việc sao chép toàn bộ giá trị của object
//   // nhưng vẫn tránh dc việc tham chiếu cùng vùng nhớ
//   Vector copyWith({double? x, double? y, VectorVer2? vectorVer2}) {
//     return Vector(
//         x: x ?? this.x,
//         y: y ?? this.y,
//         vectorVer2: vectorVer2 ?? this.vectorVer2?.copyWith());
//   }
// }

// class VectorVer2 {
//   double? z;
//   VectorVer2({
//     this.z,
//   });

//   VectorVer2 copyWith({double? z}) {
//     return VectorVer2(z: z ?? this.z);
//   }
// }

// void main(List<String> args) {
//   final vectorA = Vector(x: 2, y: 3, vectorVer2: VectorVer2(z: 5));
//   final vectorB = vectorA;
//   print('Hash A: ${vectorA.hashCode}');
//   print('Hash B: ${vectorA.hashCode}');
//   print('Vector A = Vector B ko??? ${vectorA == vectorB}');

//   print('x of vectorA: ${vectorA.x}');
//   print('x of vectorB: ${vectorB.x}');
//   vectorB.x = 5;
//   print('---');
//   print('x of vectorA: ${vectorA.x}');
//   print('x of vectorB: ${vectorB.x}');

//   final vectorC = vectorA.copyWith();
//   print('x of vectorA: ${vectorA.x}');
//   print('x of vectorC: ${vectorC.x}');
//   vectorC.x = 6;

//   print('---');
//   print('x of vectorA: ${vectorA.x}');
//   print('x of vectorC: ${vectorC.x}');

//   print("thay đổi giá trị của VectorVer2 của Vector C thành 10");
//   vectorC.vectorVer2?.z = 15;

//   print('z of vectorVer2 của vectorC: ${vectorC.vectorVer2?.z}');
//   print('z of vectorVer2 của vectorA: ${vectorA.vectorVer2?.z}');
// }

//! Enum
// Enum (viết tắt của "enumeration") trong Dart là một loại dữ liệu đặc biệt
// cho phép bạn định nghĩa một tập hợp các hằng số có tên

// Mỗi hằng số trong enum đại diện cho một giá trị cụ thể

//! 1. Khi nào sử dụng Enum?
// Bạn có thể sử dụng enum khi bạn muốn làm việc với một nhóm các giá trị cố định
// chẳng hạn như các trạng thái, tùy chọn hoặc loại dữ liệu cụ thể
//? Ví dụ:
//? - nếu bạn muốn biểu thị các hướng của la bàn (Bắc, Nam, Đông, Tây),
//? - các ngày trong tuần,
//? - hoặc trạng thái của một quy trình (Đang chạy, Tạm dừng, Hoàn thành).
//! 2. Định nghĩa Enum trong Dart
// Enum trong Dart được định nghĩa bằng cách sử dụng từ khóa enum,
// theo sau là tên của enum và danh sách các giá trị của nó.
//! 3. Sử dụng Enum
// void main() {
//   // duyệt qua tất cả các giá trị của một enum bằng cách sử dụng thuộc tính values.
//   for (var direction in CompassDirection.values) {
//     print(direction);
//   }

//   // Enum cũng như class, có thể làm một kiểu dữ liệu
//   CompassDirection direction = CompassDirection.east;

//   switch (direction) {
//     // truy cập các giá trị của enum bằng cách
//     // sử dụng cú pháp EnumName.ValueName, như CompassDirection.north.
//     case CompassDirection.north:
//       print('Heading North');
//       break;
//     case CompassDirection.south:
//       print('Heading South');
//       break;
//     case CompassDirection.east:
//       print('Heading East');
//       break;
//     case CompassDirection.west:
//       print('Heading West');
//       break;
//   }
// }

// enum CompassDirection { north, south, east, west }

// //! Nâng cấp Enum
// 2 kĩ thuật cơ bản để nâng cấp enum đó là getter và method
// enum VehicleType {
//   bike,
//   car,
//   bus,
//   truck,
//   train;

//   bool get canRunOnHighway {
//     switch (this) {
//       case VehicleType.car:
//       case VehicleType.bus:
//       case VehicleType.truck:
//         return true;
//       default:
//         return false;
//     }
//   }

//   String titleInSpecific(bool isVn) {
//     switch (this) {
//       case VehicleType.bike:
//         return isVn ? "Xe máy" : "Bike";
//       case VehicleType.car:
//         return isVn ? "Ô tô" : "Car";
//       case VehicleType.bus:
//         return isVn ? "Xe buýt" : "Bus";
//       case VehicleType.truck:
//         return isVn ? "Xe tải" : "Truck";
//       case VehicleType.train:
//         return isVn ? "Tàu lửa" : "Train";
//     }
//   }
// }

// class Car extends Vehicle {
//   final int seatCount;
//   Car({required this.seatCount, required super.odometer, required super.type});

//   @override
//   void moveForward(int meter) {
//     print("The car move forwarad $meter meters");
//   }
// }

// abstract class Vehicle {
//   int odometer;
//   VehicleType type;
//   Vehicle({
//     required this.odometer,
//     required this.type,
//   });

//   void moveForward(int meter);
// }

// void main(List<String> args) {
//   final car = Car(seatCount: 5, odometer: 5, type: VehicleType.car);

//   if (car.type.canRunOnHighway) {
//     print('${car.type.titleInSpecific(true)} có thể chạy trên cao tốc');
//   }
// }

//! Bài tập: Quản lý trạng thái đặt hàng
//? Yêu cầu:

//? 1. Tạo một enum có tên là OrderStatus để đại diện cho các trạng thái của một đơn hàng, 
// bao gồm:
//  - pending (đang chờ xử lý)
//  - processed (đã xử lý)
//  - shipped (đã giao hàng)
//  - delivered (đã giao hàng thành công)
//  - cancelled (đã hủy)

//? 2. Tạo một lớp Order để biểu diễn đơn hàng, với các thuộc tính sau:
// - id (số ID của đơn hàng)
// - status (trạng thái của đơn hàng, sử dụng OrderStatus)

//? 3. Tạo phương thức updateStatus trong lớp Order để cập nhật trạng thái của đơn hàng.

//? 4. Trong phương thức main(), tạo một đối tượng Order, 
//  hiển thị trạng thái ban đầu của đơn hàng, 
//  sau đó cập nhật trạng thái của đơn hàng 
//  qua các bước processed, shipped, và delivered. 
//  Cuối cùng, hiển thị trạng thái cuối cùng của đơn hàng.

//? Khi bạn chạy chương trình, kết quả sẽ trông giống như sau
// Initial status of Order 1: OrderStatus.pending
// Order 1 status updated to OrderStatus.processed
// Order 1 status updated to OrderStatus.shipped
// Order 1 status updated to OrderStatus.delivered
// Final status of Order 1: OrderStatus.delivered

// enum StudyStatus { Active, Graduated, DroppedOut }

// class Student {
//   final int id;
//   final String name;
//   final int age;
//   final StudyStatus status;

//   Student({
//     required this.id,
//     required this.name,
//     required this.age,
//     required this.status,
//   });

//   Student copyWith({
//     String? name,
//     int? age,
//     StudyStatus? status,
//   }) {
//     return Student(
//       id: this.id, 
//       name: name ?? this.name,
//       age: age ?? this.age,
//       status: status ?? this.status,
//     );
//   }

//   @override
//   String toString() {
//     return 'Student(id: $id, name: $name, age: $age, status: $status)';
//   }
// }

// void addStudent(List<Student> students, Student student) {
//   students.add(student);
// }

// void updateStudent(List<Student> students, Student updatedStudent) {
//   int index = students.indexWhere((student) => student.id == updatedStudent.id);
//   if (index != -1) {
//     students[index] = updatedStudent;
//   } else {
//     print("Student not found!");
//   }
// }

// double calculateAverageAge(List<Student> students) {
//   if (students.isEmpty) return 0.0;
//   int totalAge = students.fold(0, (sum, student) => sum + student.age);
//   return totalAge / students.length;
// }

// void main() {

//  List<Student> students = [
//     Student(id: 1, name: 'minh', age: 19, status: StudyStatus.Active),
//     Student(id: 2, name: 'khanh', age: 20, status: StudyStatus.Graduated),
//     Student(id: 3, name: 'nhi', age: 21, status: StudyStatus.DroppedOut),
//   ];

//   print("Danh sách sinh viên ban đầu:");
//   students.forEach(print);

//   Student newStudent = Student(id: 4, name: 'duy', age: 20, status: StudyStatus.Active);
//   addStudent(students, newStudent);

//   Student updatedStudent = students[0].copyWith(age: 21, status: StudyStatus.Graduated);
//   updateStudent(students, updatedStudent);

//   print("\nDanh sách sinh viên sau khi thay đổi:");
//   students.forEach(print);

//   double averageAge = calculateAverageAge(students);
//   print("\nTuổi trung bình của sinh viên: $averageAge");
// }


// import 'package:collection/collection.dart';

// class Student {
//   final String id;

//   final String name;
//   final int age;
//   final StudyStatus status;
//   Student({
//     required this.id,
//     required this.name,
//     required this.age,
//     this.status = StudyStatus.active,
//   });

//   Student copyWith({String? newName, int? newAge, StudyStatus? newStatus}) {
//     return Student(
//         id: id,
//         name: newName ?? name,
//         age: newAge ?? age,
//         status: newStatus ?? status);
//   }

//   @override
//   String toString() {
//     return "Student: (Id: $id, Name: $name, Age: $age, Status: $status) \n";
//   }
// }
// enum StudyStatus { active, graduated, droppedOut }
//! Bất lợi khi sử dụng thuộc tính Private
//? 1. Khó kiểm soát instance mà bạn đã thay đổi

//? 2. Có bao nhiêu thuộc tính private có thể thay đổi giá trị
//? => tạo ra bấy nhiêu hàm set

// void addStudent(List<Student> students, Student student) {
// //! (Pass by value)
// double calculateAverageAge(List<Student> students) {
//   int totalAge = 0;
//   for (var student in students) {
//     totalAge = totalAge + student.age;
//   }
//   return totalAge / students.length;
// }
// void updateStudent(List<Student> students, Student updatedStudent) {
//   final indexInList = students
//       .indexWhere((studentElement) => studentElement.id == updatedStudent.id);
//   final isStudentExistInList = indexInList != -1;
//   if (isStudentExistInList) {
//     students[indexInList] = updatedStudent;
//   }
// }
// void main(List<String> args) {
//   final List<Student> listStudents = [];
//   addStudent(listStudents, Student(id: "1", name: "huy", age: 10));
//   addStudent(listStudents, Student(id: "2", name: "Alice", age: 12));
//   addStudent(listStudents, Student(id: "3", name: "John", age: 20));
//   print(listStudents.toString());

//   final requestToChangeStudent =
//       listStudents.firstWhereOrNull((element) => element.id == "2");
//   if (requestToChangeStudent != null) {
//     final updatedStudent = requestToChangeStudent.copyWith(newName: "Sandra");
//     print("Updated Student: $updatedStudent");
//     print("Request to change Student: $requestToChangeStudent");
//     updateStudent(listStudents, updatedStudent);
//     print(listStudents.toString());
//     // requestToChangeStudent.name = "Sandra";
//     // print(listStudents.toString());
//   }

//   // print(
//   //     "Tuổi trung bình của danh sách sinh viên: ${calculateAverageAge(listStudents)}");
// }


//! Mixin
// Mixin là một khái niệm của Dart, thường là mixin class,
// dùng để cung cấp thêm chức năng cho một class có sẵn nào đó

//! Đặc điểm Mixin
//  1. Là một lớp đặc biệt được sử dụng để chia sẻ code với các lớp khác
//    Thay vì kế thừa từ một lớp cha, một lớp có thể sử dụng một mixin
//    để lấy các phương thức và thuộc tính được định nghĩa trong mixin đó.

//  2. Một mixin không thể được khởi tạo trực tiếp,
//     tức là bạn không thể tạo đối tượng từ một mixin.

//  3. Không cần phải là lớp trừu tượng:
//     Một mixin có thể chứa các phương thức và thuộc tính cụ thể
//     mà không cần phải là lớp trừu tượng.

//! Cách sử dụng Mixin
// Bạn có thể sử dụng một mixin trong một lớp khác bằng cách sử dụng từ khóa with.
//? Mixin CanRun và CanFly:
// Định nghĩa các phương thức run() và fly().
// Những phương thức này có thể được sử dụng trong các lớp khác
//? bằng cách sử dụng từ khóa with.
// //? Lớp Bird: Sử dụng mixin CanFly, do đó lớp này có thể truy cập phương thức fly().

// mixin CanFly {
//   void fly() {
//     print('Flying');
//   }
// }

// mixin CanRun {
//   void run() {
//     print('Running');
//   }
// }

// class Bird with CanFly {
//   void chirp() {
//     print('Chirping');
//   }

//   @override
//   void fly() {
//     print('Flying cao 50m');
//   }
// }
// // //? Lớp Human: Sử dụng mixin CanRun, do đó lớp này có thể truy cập phương thức run().
// class Human with CanRun {
//   void speak() {
//     print('Speaking');
//   }
// }
// // //? Lớp SuperHero: Sử dụng cả hai mixin CanRun và CanFly,
// // //? do đó lớp này có thể truy cập cả hai phương thức run() và fly().
// class SuperHero with CanRun, CanFly {
//   @override
//   void fly() {
//     print("Bay cao vô cực");
//   }

//   void saveTheDay() {
//     print('Saving the day!');
//   }


// }


// mixin CanFly {
//   void fly() {
//     print('Flying');
//   }
// }

// mixin CanRun {
//   void run() {
//     print('Running');
//   }
// }
// class Bird with CanFly {
//   void chirp() {
//     print('Chirping');
//   }

//   @override
//   void fly() {
//     print('Flying cao 50m');
//   }
// }
// // //? Lớp Human: Sử dụng mixin CanRun, do đó lớp này có thể truy cập phương thức run().
// class Human with CanRun {
//   void speak() {
//     print('Speaking');
//   }
// }
// // //? Lớp SuperHero: Sử dụng cả hai mixin CanRun và CanFly,
// // //? do đó lớp này có thể truy cập cả hai phương thức run() và fly().
// class SuperHero with CanRun, CanFly {
//   @override
//   void fly() {
//     print("Bay cao vô cực");
//   }

//   void saveTheDay() {
//     print('Saving the day!');
//   }
// }

//? Mixin CanRun và CanFly:
// Định nghĩa các phương thức run() và fly().
// Những phương thức này có thể được sử dụng trong các lớp khác
//? bằng cách sử dụng từ khóa with.
// //? Lớp Bird: Sử dụng mixin CanFly, do đó lớp này có thể truy cập phương thức fly().


//! Thuộc tính trong Mixin
// mixin CanSwim {
//   double swimSpeed = 0; // Thuộc tính công khai
//   void swim() {
//     print('Swimming at speed $swimSpeed');
//   }
// }
// class Fish with CanSwim {
//   String species;

//   Fish(this.species);

//   void showDetails() {
//     print('Species: $species');
//     swimSpeed = 10;
//     swim();
//   }
// }
// class Human with CanSwim {
//   String name;

//   Human(this.name);

//   void showDetails() {
//     print('Name: $name');
//     swim();
//   }
// }
//! Khi nào nên định nghĩa Thuộc tính trong Mixin
//? Chia sẻ trạng thái:
//  Nếu bạn cần chia sẻ một hoặc nhiều thuộc tính cụ thể
//  giữa nhiều lớp mà không cần tạo một hệ thống phân cấp phức tạp,
//  mixin là một cách hiệu quả để làm điều này.

//? Tính linh hoạt:
//  Các lớp có thể thay đổi hoặc ghi đè
//  giá trị của các thuộc tính được định nghĩa trong mixin
//  để phù hợp với nhu cầu của lớp đó.

//! Extension
// Extension trong Dart là một tính năng cho phép bạn mở rộng chức năng
// của các lớp hiện có mà không cần kế thừa hoặc sửa đổi code của lớp đó

//! Khi nào nên sử dụng Extension?
// - Khi bạn muốn mở rộng chức năng của một lớp mà không cần tạo ra một lớp con.
// - Khi bạn muốn giữ mã nguồn của mình gọn gàng
//   và dễ đọc bằng cách thêm các chức năng vào lớp theo cách mô-đun.

//! Cách định nghĩa Extension
// Bạn có thể định nghĩa một extension bằng cách sử dụng từ khóa extension,
// theo sau là tên của extension và từ khóa on,
// rồi đến kiểu dữ liệu mà bạn muốn mở rộng.
// extension StringExtensions on String {
//   // Thêm một phương thức để kiểm tra chuỗi có phải là một số hay không
//   bool get isNumeric {
//     return double.tryParse(this) != null;
//   }

//   // Thêm một phương thức mới để đảo ngược chuỗi
//   String get reversed {
//     return split('').reversed.join('');
//   }
// }
// void main() {
//   String example = "Dart Flutter";

//   // Sử dụng phương thức mới reversed

//   print(example.reversed); // In ra: traD

//   // Sử dụng phương thức mới isNumeric
//   print(example.isNumeric); // In ra: false

//   String number = "12345";
//   print(number.isNumeric); // In ra: true
// }

// void main(List<String> args) {
//   final temperatureInC = 40.5;
//   final temperatureInF = temperatureInC.toF;

//   print("Độ C là: ${temperatureInC.addCKeyword}");
//   print("Độ F là: ${temperatureInF.addFKeyword}");
// }

// extension TemperatureConvert on double {
//   double get toC => (5 / 9) * (this - 32);
//   double get toF => (9 / 5) * this + 32;

//   double toFVer2() => (9 / 5) * this + 32;
// }

// extension TemperatureKeyword on double {
//   String get addCKeyword => "$this°C";
//   String get addFKeyword => "$this°F";
// }

//! Generic
// Trong nhiều trường hợp, bạn muốn viết một lớp hoặc một hàm mà có thể làm việc với nhiều loại dữ liệu khác nhau,
// nhưng vẫn giữ được tính an toàn kiểu dữ liệu.
// Thay vì phải viết các phiên bản khác nhau của cùng một lớp hoặc hàm cho từng kiểu dữ liệu,
// bạn có thể sử dụng Generic để làm điều này.

//? Generic là kí hiệu một ký tự nào đó ví dụ như E, T, K, V,...
//? để đại diện cho một kiểu dữ liệu chưa biết khi viết hàm hoặc method,
//? nhưng khi sử dụng thì phải truyền kiểu dữ liệu mong muốn vào.
//! Cách sử dụng Generic

//? Generic trong lớp (Class Generics)
// Bạn có thể định nghĩa một lớp với các tham số kiểu (type parameters) để lớp có thể hoạt động với nhiều kiểu dữ liệu khác nhau.

//? Box<T>: Đây là một lớp generic với tham số kiểu T.
// Điều này có nghĩa là T có thể là bất kỳ kiểu dữ liệu nào, và Box sẽ lưu trữ một giá trị của kiểu đó.
// class Box<T> {
//   T value;

//   Box(this.value);

//   T getValue() {
//     return value;
//   }

//   void updateValue(T newValue) {
//     value = newValue;
//   }
// }

// class BoxInt {
//   int value;
//   BoxInt({
//     required this.value,
//   });

//   int getValue() {
//     return value;
//   }

//   void updateValue(int newValue) {
//     value = newValue;
//   }
// }
// class BoxString {
//   String value;
//   BoxString({
//     required this.value,
//   });

//   String getValue() {
//     return value;
//   }

//   void updateValue(String newValue) {
//     value = newValue;
//   }
// }

// void main() {
//   //? Khi tạo một đối tượng của Box, bạn chỉ định kiểu dữ liệu cụ thể mà Box sẽ làm việc với

//   // Box cho kiểu int
//   Box<int> intBox = Box<int>(123);
//   print('Integer value: ${intBox.getValue()}'); // In ra: Integer value: 123

//   // Box cho kiểu String
//   Box<String> stringBox = Box('Hello');
//   print('String value: ${stringBox.getValue()}'); // In ra: String value: Hello

//   // Cập nhật giá trị trong Box
//   intBox.updateValue(456);
//   print(
//       'Updated integer value: ${intBox.getValue()}'); // In ra: Updated integer value: 456
// }

//! Generic trong hàm (Function Generics)
// Hàm cũng có thể sử dụng Generic để làm việc với nhiều loại dữ liệu khác nhau.

//? Đây là một hàm generic với tham số kiểu T.
//? Điều này có nghĩa là hàm findMax có thể hoạt động với bất kỳ kiểu dữ liệu nào mà T đại diện,
//? miễn là kiểu đó triển khai giao diện Comparable.

//? Comparable: Comparable là một giao diện (interface) trong Dart được sử dụng để so sánh các đối tượng với nhau.
// Khi một lớp triển khai giao diện Comparable,
// nó cần cung cấp một phương thức có tên là compareTo để xác định cách so sánh hai đối tượng của lớp đó

// void main() {
//   print('Max int: ${findMax<num>(10, 20)}'); // In ra: Max int: 20
//   print(
//       'Max string: ${findMax<String>('apple', 'banana')}'); // In ra: Max string: banana
// }

// T findMax<T extends Comparable<T>>(T a, T b) {
//   // Hàm findMax so sánh hai giá trị a và b và trả về giá trị lớn hơn.
//   if (a.compareTo(b) > 0) {
//     return a;
//   } else {
//     return b;
//   }
// }

// //! Generic trong Interface
// //? Generic cũng có thể được sử dụng trong Interface để tạo các Interface làm việc với nhiều loại dữ liệu khác nhau.
// abstract class Storage<T> {
//   void addItem(T item);
//   T? getItem();
// }
// class MemoryStorage<B> implements Storage<B> {
//   B? _item;

//   @override
//   void addItem(B item) {
//     _item = item;
//   }

//   @override
//   B? getItem() {
//     return _item;
//   }
// }

//! Thư viện
// Thư viện là các đoạn code hay chức năng dc phát triển bởi Lập trình viên khác đóng góp
// Chúng ta có thể sử dụng thư viện để tối ưu hiệu suất công việc
// Tránh việc viết lại 1 chức năng đã có trên cộng đồng thư viện

//! Ví dụ sử dụng thư viện
// Để viết một extension cho num về việc hiển thị giá tiền Việt Nam, có dấu , và . để phân tách chữ số.
// Chúng ta sẽ phải chia phần ngàn, sau đó add separator, rồi thêm postfix
// => Rất dài dòng và phức tạp logic

// Khi đó sử dụng thư viện intl để tăng tốc và có thêm nhiều method hay ho khác

// import 'package:intl/intl.dart';

// void main(List<String> args) {
//   final amount = 100000000.123;
//   final vnCurrencyFormat =
//       NumberFormat.currency(locale: "vi_VN", decimalDigits: 2);
//   print(vnCurrencyFormat.format(amount));
// }

//b1
// mixin HasSpeed {
//   double speed = 0.0;
//   double calculateTime(double distance) {
//     if (speed > 0) {
//       return distance / speed;
//     } else {
//       return double.infinity; 
//     }
//   }
// }


// mixin HasAcceleration {
//   double acceleration = 0.0;

//   double calculateDistance(double time) {
//     return 0.5 * acceleration * time * time;
//   }
// }

// class RaceCar with HasSpeed {
//   RaceCar(double speed) {
//     this.speed = speed;
//   }
// }

// class JetCar with HasSpeed, HasAcceleration {
//   JetCar(double speed, double acceleration) {
//     this.speed = speed;
//     this.acceleration = acceleration;
//   }
// }

// void main() {

//   RaceCar raceCar = RaceCar(40.0);

//   JetCar jetCar = JetCar(50.0, 10.0);


//   double raceCarTime = raceCar.calculateTime(100.0);
//   print('RaceCar hoàn thành cuộc đua trong $raceCarTime giờ.');
//   double jetCarTime = jetCar.calculateTime(1000.0);
//   print('JetCar hoàn thành cuộc đua trong $jetCarTime giờ.');

//   double jetCarDistance = jetCar.calculateDistance(5.0);
//   print('JetCar di chuyển được $jetCarDistance đơn vị trong 5 giờ.');
// }

// b2
// extension IntExtensions on int {

//   bool isPrime() {
//     if (this <= 1) return false;
//     for (int i = 2; i <= this ~/ 2; i++) {
//       if (this % i == 0) return false;
//     }
//     return true;
//   }

//   int factorial() {
//     if (this < 0) throw Exception('Factorial is not defined for negative numbers.');
//     if (this == 0) return 1;
//     int result = 1;
//     for (int i = 1; i <= this; i++) {
//       result *= i;
//     }
//     return result;
//   }
//   bool isEvenNumber() {
//     return this % 2 == 0;
//   }
// }

// void main() {
//   int number = 5;
//   print('$number is prime: ${number.isPrime()}');
//   print('Factorial of $number: ${number.factorial()}');
//   print('$number is even: ${number.isEvenNumber()}');

//  number = 4;
//   print('$number is prime: ${number.isPrime()}');
//   print('Factorial of $number: ${number.factorial()}');
//   print('$number is even: ${number.isEvenNumber()}');
// }


//b3 
// Lớp Box sử dụng Generic T
class Box<T> {
  // Thuộc tính để lưu trữ giá trị kiểu T
  T? value;

  // Phương thức để đặt giá trị mới vào hộp
  void setValue(T newValue) {
    value = newValue;
  }

  // Phương thức để lấy giá trị từ hộp
  T? getValue() {
    return value;
  }

  // Phương thức kiểm tra giá trị có phải là số chẵn (nếu là số nguyên)
  bool isEven() {
    if (value is int) {
      return (value as int) % 2 == 0;
    }
    return false;
  }

  // Phương thức trả về độ dài của chuỗi (nếu là chuỗi)
  int stringLength() {
    if (value is String) {
      return (value as String).length;
    }
    return -1;
  }
}

void main() {
  // Tạo đối tượng Box<int>
  var intBox = Box<int>();
  intBox.setValue(42);
  print("Giá trị trong intBox: ${intBox.getValue()}");
  print("Giá trị trong intBox có phải là số chẵn? ${intBox.isEven()}");

  // Tạo đối tượng Box<String>
  var stringBox = Box<String>();
  stringBox.setValue("Flutter");
  print("Giá trị trong stringBox: ${stringBox.getValue()}");
  print("Độ dài chuỗi trong stringBox: ${stringBox.stringLength()}");

  // Kiểm tra khi sử dụng với kiểu dữ liệu khác
  var doubleBox = Box<double>();
  doubleBox.setValue(3.14);
  print("Giá trị trong doubleBox: ${doubleBox.getValue()}");
  print("Giá trị trong doubleBox có phải là số chẵn? ${doubleBox.isEven()}");
  print("Độ dài chuỗi trong doubleBox: ${doubleBox.stringLength()}");
}
