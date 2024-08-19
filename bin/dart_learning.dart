import 'package:dart_learning/dart_lib.dart' ;

void main(List<String> arguments) {
  print('Hello world: ${calculate()}!');
  
  //keyword : var , final, const , dynamic
  
   // var : có thể thay đổi tùy trong tương lai
   var age = 25;
   print("gia tri cua age la $age");
   age = 30;
   print("gia tri cua age la $age");
   // final : sẽ ko thay đổi trong tương lai, chỉ gán được 1 lần duy nhât
   final year = 2024;
   print(" this year: $year");
   // const : chỉ gán 1 lần duy nhất , chỉ gán số 
   const month = 0 ; 
   print(month);
   // dynamic : kiểu dữ liệu đặc biệt là 1 kiểu khai báo biến giá trị của biến có thể thay đổi lúc thực thi và trong tương lai
   dynamic a = "khanh";
   print("gia tri của a $a");
   a = 20;
   print("gia tri sau khi thay doi $a");
   // int , double , string, bool, list
   // biểu dể lưu trữ và quản lý dữ liệu
   // bạn có thể khai báo với hoặc ko cần chỉ định dữ liệu
   // Sử dụng final và const để khai báo biển mà bạn ko muốn thay đổi (gán 1 lần duy nhất)
  
  //object
  Object obj = Object();
  obj.toString();
  String dayInMonth = " aufafi";
  dayInMonth.toString();

  int inDay = 24;
  inDay.toString();
  // string là 1 kiểu chuỗi , sẽ để dc nhiều tk cha;
  // string có thể được khai báo bằng cách sử dụng dấu ngoặc kép
  
  String myCountry = "viet nam";
  print(myCountry);
  // boolean là kiểu có 2 giá trị true và false
}
// cấu trúc variable 
// 1 kiểu dữ liệu 
// 2 tên biến 
// 3 giá trị
//* Từ khoá khai báo biến (var, final, const)
  // Từ khoá khai báo biến để khai báo biến mà ko cần chỉ rõ kiểu dữ liệu
  // Dart sẽ tự động xác định kiểu dữ liệu của giá trị mà bạn gán cho biến

  //! var
  // var dc dùng để khai báo 1 biến có kiểu dữ liệu dc xác định tự động
  // dựa trên giá trị đầu tiên mà bạn gán cho biến
  // sau khi biến dc gán 1 giá trị,
  // kiểu dữ liệu của biến ko thể thay đổi có thể thay đổi giá trị

  var studentName = "Alice"; // Dart hiểu đây là biến kiểu String
  print(studentName); // In ra "Alice"

  studentName = "Bob";
  print(studentName);

  // var age = 25; // Dart hiểu đây là biến kiểu int
  // age = "Twenty-five"; Sẽ gây lỗi vì kiểu của age đã dc xác định là int
  //! final
  // final dc sử dụng để khai báo 1 biến mà giá trị của nó chỉ dc gán 1 lần
  // Sau khi đã gán giá trị, bạn ko thể thay đổi gtri của biến này
  // Thích hợp cho biến mà bạn chỉ muốn xác định giá trị 1 lần nhưng giá trị này
  // có thể dc tính toán hoặc xác định tại thời điểm chạy ctrinh

  final teacherName = "Alice"; // Biến name chỉ dc gán 1 lần
  print(teacherName); // In ra "Alice"

  // teacherName = "Bob"; //sẽ gây ra lỗi vì teacherName đã dc gán gtri và ko thể thay đổi

  // biến khai báo final có thể dc gán giá trị trong thời điểm chạy ctrinh (run-time)
  print("Thời điểm trc khi final variable dc gán: ${DateTime.now()}");
  final DateTime currentTime;
  print("waiting....");
//! const
  // Từ khoá const dc sử dụng để khai báo 1 biến có gtri ko bao giờ thay đổi
  // và giá trị này phải dc xác định ngay tại thời điểm biên dịch (compile-time)
  // biến const là hoàn toàn bất biến và luôn giữ nguyên gtri trong suốt thời gian chạy ctrình

  const pi = 3.14159;
  print(pi); // In ra 3.14159

  // pi = 3.14; //sẽ gây ra lỗi vì pi là hằng số và ko thể thay đổi
