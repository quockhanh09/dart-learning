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
   // dynamic : là 1 kiểu khai báo biến giá trị của biến có thể thay đổi lúc thực thi và trong tương lai
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
