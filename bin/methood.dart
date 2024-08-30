

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

enum StudyStatus { Active, Graduated, DroppedOut }

class Student {
  final int id;
  final String name;
  final int age;
  final StudyStatus status;

  Student({
    required this.id,
    required this.name,
    required this.age,
    required this.status,
  });

  Student copyWith({
    String? name,
    int? age,
    StudyStatus? status,
  }) {
    return Student(
      id: this.id, 
      name: name ?? this.name,
      age: age ?? this.age,
      status: status ?? this.status,
    );
  }

  @override
  String toString() {
    return 'Student(id: $id, name: $name, age: $age, status: $status)';
  }
}

void addStudent(List<Student> students, Student student) {
  students.add(student);
}

void updateStudent(List<Student> students, Student updatedStudent) {
  int index = students.indexWhere((student) => student.id == updatedStudent.id);
  if (index != -1) {
    students[index] = updatedStudent;
  } else {
    print("Student not found!");
  }
}

double calculateAverageAge(List<Student> students) {
  if (students.isEmpty) return 0.0;
  int totalAge = students.fold(0, (sum, student) => sum + student.age);
  return totalAge / students.length;
}

void main() {

 List<Student> students = [
    Student(id: 1, name: 'minh', age: 19, status: StudyStatus.Active),
    Student(id: 2, name: 'khanh', age: 20, status: StudyStatus.Graduated),
    Student(id: 3, name: 'nhi', age: 21, status: StudyStatus.DroppedOut),
  ];

  print("Danh sách sinh viên ban đầu:");
  students.forEach(print);

  Student newStudent = Student(id: 4, name: 'duy', age: 20, status: StudyStatus.Active);
  addStudent(students, newStudent);

  Student updatedStudent = students[0].copyWith(age: 21, status: StudyStatus.Graduated);
  updateStudent(students, updatedStudent);

  print("\nDanh sách sinh viên sau khi thay đổi:");
  students.forEach(print);

  double averageAge = calculateAverageAge(students);
  print("\nTuổi trung bình của sinh viên: $averageAge");
}
