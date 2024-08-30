// Trong ví dụ này, thuộc tính _balance là riêng tư và chỉ có thể truy cập gián tiếp thông qua các phương thức công khai như deposit() hoặc withdraw().
// Điều này đảm bảo rằng chỉ có những cách thức được định nghĩa trước mới có thể thay đổi giá trị của _balance.

import 'opp_class.dart';

// void main(List<String> args) {
//   final employee = Employee("Hoàng", 22);
//   employee.work();
//   final developer = Developer("Huy", 26);
//   developer.work();
//   final manager = Manager("Alice", 27);
//   manager.work();
// }
// void main(){
//   var account = BankAccount('123-21312-312321', 1000);
//   print('so du :${account.totalBalance}');
//   account.deposit(500);
//   print('so du :${account.totalBalance}');
//   account.withdraw(200);
//   print('so du: ${account.totalBalance}');
// }
// void main(){
//   final xe1 = Car("Toyota","Fortuner",2023);
//   print{"xe1 info: ${xe1.brand},${xe1.model} ,${xe1.year}"};
//   xe1.brand = "Huyndai";
//   print("xe1 info: ${xe1.brand},${xe1.model} ,${xe1.year}");
// }

// void main(){
//   final cat = Cat();
//   cat.eat();
//   cat.run();
// }