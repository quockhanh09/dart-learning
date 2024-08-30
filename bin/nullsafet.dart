import 'dart:io';

void main() {
//! Null safety
  // Null Safety đảm bảo rằng các biến không thể giữ giá trị null
  // trừ khi bạn cho phép chúng làm như vậy một cách rõ ràng
  // giúp tăng độ an toàn và giảm bớt các lỗi liên quan đến null khi chạy chương trình

//! Non-nullable types (Kiểu không cho phép null)
  // Mặc định, các biến trong Dart không thể chứa giá trị null.
  // Nếu bạn khai báo một biến mà không chỉ định nó có thể là null,
  // Dart sẽ đảm bảo rằng biến đó luôn có giá trị không null.
  // int number = 5; // number 
//! Nullable types (Kiểu cho phép null)
  // Nếu bạn muốn cho phép một biến có thể chứa giá trị null,
  // bạn phải chỉ định điều đó bằng cách thêm ? vào sau kiểu dữ liệu.
  // int? maybeNumber;
  // maybeNumber = null; // OK
  // print(maybeNumber);
  // maybeNumber = 5;
  // print(maybeNumber);

  //! Null-aware operators (Toán tử null-aware)
  // // ?: Sử dụng để đánh dấu kiểu dữ liệu có thể null.
  // // ?.: Toán tử truy cập điều kiện, chỉ thực thi nếu đối tượng không phải là null.
  // // ??: Toán tử cung cấp giá trị thay thế nếu giá trị là null.
  // // ??=: Gán giá trị mặc định nếu biến là null.
  // String? name;
  // print("The value of name: $name");
  // print("the length of name: ${name?.length}"); // Sẽ in ra null thay vì gây lỗi

  // String greeting = name ?? 'Hello, Guest!';
  // print(greeting); // In ra 'Hello, Guest!'

  // name ??= "John Doe";
  // print("The value of name: $name"); // In ra 'John Doe'

  // //! The ! operator (Toán tử ép buộc không-null)
  // Nếu bạn chắc chắn rằng một biến nullable có giá trị không phải null tại một thời điểm nào đó trong mã
  // bạn có thể sử dụng toán tử ! để ép buộc Dart coi nó là non-nullable.

  // Hãy cẩn thận khi sử dụng !, vì nếu biến thực sự là null, điều này sẽ gây ra lỗi.
  // final intNumber = 3;
  // String? name1;
  // if (intNumber % 2 == 0) {
  //   name1 = 'Alice';
  // }
  // print(name1?.length ?? "name1 null rồi"); // OK vì name không phải là null

  // //! Null safety và Collections (Bộ sưu tập với Null Safety)
  // Các Collection như List, Set, và Map cũng có thể được kiểm soát với Null Safety.
  // Bạn có thể chỉ định liệu các phần tử trong bộ sưu tập có thể là null hay không
  // bằng cách sử dụng ?.
  // List<int?> numbers = [1, 2, null, 4, null]; // Danh sách cho phép giá trị null
  // print("List of nullable integer: $numbers");
  // List<int> nonNullableNumbers = [
  //   1,
  //   2,
  //   3,
  //   4,
  // ]; // Danh sách không cho phép giá trị null
  // print("List of non-nullable integer: $nonNullableNumbers");

  //! Function
// Function không trả về giá trị
  // void sayHello() {
  //   print('Hello, World!');
  // }

  // Function trả về giá trị
  // Function có thể có tham số, cho phép bạn truyền dữ liệu vào function khi gọi nó.
  // Tham số được khai báo trong dấu ngoặc tròn ().
//   int add(int a, int b) {
//     // Function có thể trả về một giá trị sử dụng từ khóa return.
//     // Kiểu trả về của function cần được khai báo trước tên function.
//     return a + b;
//   }
// //! Gọi Function
//   // Để sử dụng một function, bạn chỉ cần gọi tên function đó và truyền các tham số nếu có.
//   sayHello(); // Gọi function sayHello

//   int result = add(5, 3); // Gọi function add và lưu kết quả
//   print(result); // In ra 8

  //! Optional Parameters (Tham số 
// // Tham số có tên
  // void printDetails({String? name, int? age}) {
  //   print('Name: $name, Age: $age');
  // }
// printMessage("huy", 123); // In ra 'Greeting: Hello'

  // printDetails(age: 123, name: "huy"); // In ra 'Name: Alice, Age: 30'
// void printMessage2(
//       {required String? message, required int number, String? prefix}) {
//     if (prefix != null) {
//       print('$prefix: $message');
//     } else {
//       print("message là: $message, number: $number");
//     }
//   }

//   printMessage2(message: "huy", number: 456);
//   printMessage2(message: "huy", number: 456, prefix: "abcd");
  
//   //! Example: Viết 1 hàm trả về List số tự nhiên từ 0 đến con số bạn nhập vào
//   //? Input: 8
//   //? Output: [0, 1, 2, 3, 4, 5, 6, 7, 8]
//   List<int> returnListNumber({required int number}) {
//     List<int> listNumber = [];
//     for (int i = 0; i <= 8; i++) {
//       listNumber.add(i);
//     }
//     return listNumber;
//   }

//   final result = returnListNumber(number: 8);
//   print(result);

  // //! Error handling
  // Error Handling trong Dart là quá trình xác định, bắt và xử lý các lỗi (errors) hoặc ngoại lệ (exceptions)
  // xảy ra trong quá trình thực thi chương trình

  // đảm bảo rằng ứng dụng của bạn không bị dừng đột ngột
  // hoặc gặp phải các tình huống lỗi mà không được xử lý.

  //! Exception
  // Ngoại lệ là các sự kiện bất thường xảy ra trong quá trình thực thi chương trình,
  // chẳng hạn như chia một số cho 0, truy cập vào một chỉ số không hợp lệ trong danh sách, hoặc không tìm thấy tệp tin.
  // Ngoại lệ thường khác với lỗi (error) vì chúng có thể được dự đoán và xử lý.
//! Cơ chế xử lý ngoại lệ (Exception Handling)
  // Dart cung cấp các cấu trúc try, catch, on, finally, và throw để xử lý ngoại lệ.

  //! on và catch
  //? on: Dùng để bắt một loại ngoại lệ cụ thể.
  // Nếu bạn muốn xử lý các loại ngoại lệ khác nhau theo cách khác nhau,
  // bạn có thể sử dụng nhiều khối on.
  //! finally
// //! throw
  // Dùng để ném ra một ngoại lệ.
  // Bạn có thể ném ngoại lệ mặc định của Dart hoặc tự định nghĩa một ngoại lệ của riêng mình.
  // void checkAge(int age) {
  //   if (age < 18) {
  //     throw Exception('You must be at least 18 years old.');
  //   }
  // }

  // try {
  //   checkAge(15);
  // } catch (e) {
  //   print('Caught an exception: $e');
  // }
// //! ngoại lệ tuỳ chỉnh:
//   void checkAge(int age) {
//     if (age < 18) {
//       throw AgeException('Age is too low.');
//     } else if (age > 60) {
//       throw Exception("tuổi quá già");
//     }
//   }
// try {
//     checkAge(61);
//   } on AgeException catch (e) {
//     print('Caught an exception: ${e.cause}');
//   } catch (e) {
//     print('Lỗi khác: $e');
//   }

//   class AgeException implements Exception {
//   String cause;
//   AgeException(this.cause);
// }


//bt1
// String? str = "uagiufaifafiugfi ";  // Bạn có thể thay đổi giá trị này để kiểm tra

//   if (str?.isNotEmpty ?? false) {
//     print("Độ dài của chuỗi: ${str.length}");
//   } else {
//     print("Chuỗi rỗng hoặc null");
//   }

//bt2

  // List<int>? danhSach = [12, 28, 36, 70, 4];

  // try {
  //   if (danhSach == null || danhSach.isEmpty) {
  //     throw Exception("Danh sách null hoặc rỗng!");
  //   }
  //   int tong = danhSach.reduce((value, element) => value + element);
  //   double trungBinh = tong / danhSach.length;
  //   print("Trung bình cộng là: $trungBinh");
  // } catch (e) {
  //   print("Lỗi: ${e.toString()}");
  // }

//bt3

  // List<int> numbers = [6, 7, 100, 0, 11];  // Danh sách số nguyên

  // try {
  //   if (numbers.isEmpty) {
  //     throw Exception("Danh sách rỗng");
  //   }

  //   int maxValue = numbers.reduce((a, b) => a > b ? a : b);
  //   int minValue = numbers.reduce((a, b) => a < b ? a : b);

  //   print("Giá trị lớn nhất: $maxValue");
  //   print("Giá trị nhỏ nhất: $minValue");
  // } catch (e) {
  //   print("Đã có lỗi xảy ra: $e");
  // }
//b4
// int a = 11;
//   int b = 3;

//   try {
//     if (b == 0) {
//       throw Exception("Không thể chia cho 0");
//     }
//     int result = a ~/ b;
//     print('Kết quả phép chia: $result');
//   } catch (e) {
//     print('Ngoại lệ xảy ra: $e');
//   }


  String text = "Hello";
  int? repeatCount;

  // Gán giá trị mặc định nếu repeatCount là null
  int repeatTimes = repeatCount ?? 1;

  // In chuỗi theo số lần lặp lạ
  for (int i = 0; i < repeatTimes; i++) {
    print(text);
  }

  // Test với repeatCount có giá trị cụ thể
  repeatCount = 3;
  repeatTimes = repeatCount ?? 1;

  for (int i = 0; i < repeatTimes; i++) {
    print(text);
  }


}
