//! Future là gì?
/*
 Là kiểu đại diện cho một kết quả từ 1 tác vụ asynchronous (bất đồng bộ), 
 sau khi tác vụ hoàn thành thì nó sẽ trở thành 1 value hoặc lỗi khi không hoàn thành.
*/

// Future<int> fetchDataFromServer() async {
//   print('Đang tải dữ liệu từ server...');

//   // Giả lập độ trễ khi tải dữ liệu bằng cách chờ 2 giây
//   return Future.delayed(Duration(seconds: 2), () {
//     return 3;
//   });
// }

// // Hàm mô phỏng việc tải dữ liệu từ server
// void main() async {
//   print('Bắt đầu chương trình');

//   final data = fetchDataFromServer();

// // ! Lấy giá trị của hàm bất đồng bộ
// // ? Cách 1: sử dụng then(value)
// // ? khi hàm then dc gọi, nó sẽ mang theo giá trị trả về của hàm bất đồng bộ sau khi đã xử lý xong
//   data.then((value) {
//     print('Dữ liệu đã được tải');
//     // Hiển thị dữ liệu đã tải lên
//     print('Dữ liệu nhận được: $value');
//     print('Kết thúc chương trình');
//   });

//   print('Chạy các tác vụ khác');
// }

//! Lấy giá trị của hàm bất đồng bộ
//? Cách 2: sử dụng Async await
/*
?  Là cặp keyword dùng trong asynchronous lập trình.
  Từ khóa await chỉ được sử dụng ngay bên trong một async function (method)

  Các hàm trả về kiểu dữ liệu Future<T> nếu được call với từ khóa await thì sẽ trả về kết quả thuộc kiểu T.
      
*/

// Future<String> fetchDataFromServer() async {
//   print('Đang tải dữ liệu từ server...');

//   // Giả lập độ trễ khi tải dữ liệu bằng cách chờ 2 giây
//   await Future.delayed(Duration(seconds: 10));

//   // Trả về kết quả sau khi hoàn thành
//   return 'Dữ liệu đã được tải';
// }

// void main() async {
//   print('Bắt đầu chương trình 1');

//   // Sử dụng await để đợi kết quả từ hàm fetchDataFromServer
//   final data = await fetchDataFromServer();

//   // Hiển thị dữ liệu đã tải lên
//   print('Dữ liệu nhận được: $data');

//   print('Kết thúc chương trình 1');

//   print('Chạy các chương trình khác');
// }

// void main() async {
//   print('Bắt đầu chương trình 1');

//   // Sử dụng await để đợi kết quả từ hàm fetchDataFromServer
//   final data = fetchDataFromServer();

//   data.then((value) {
//     // Hiển thị dữ liệu đã tải lên
//     print('Dữ liệu nhận được: $data');

//     print('Kết thúc chương trình 1');
//   });

//   print('Chạy các chương trình khác');
// }

// Future<String> fetchDataFromServer() async {
//   print('Đang tải dữ liệu từ server...');

//   final password = await getPassword();

//   // Trả về kết quả sau khi hoàn thành
//   return password;
// }

// Future<String> getPassword() {
//   return Future.delayed(Duration(seconds: 10), () => "abcdeyx");
// }

//! Bài tập: Giả lập Hệ Thống Đặt Hàng Trực Tuyến
//? Mô tả:
/*
Bạn sẽ tạo một chương trình giả lập một hệ thống đặt hàng trực tuyến. 

Hệ thống này sẽ bao gồm các chức năng sau:

  1. Kiểm tra hàng tồn kho: Xác định xem sản phẩm có sẵn trong kho hay không.
  2. Xử lý thanh toán: Mô phỏng việc thanh toán cho đơn hàng.
  3. Xác nhận đơn hàng: Xác nhận đơn hàng sau khi thanh toán thành công.

Tất cả các chức năng trên đều là các tác vụ tốn thời gian và sẽ được mô phỏng bằng cách sử dụng Future.delayed. 
Bạn sẽ sử dụng async và await để xử lý các tác vụ bất đồng bộ này.

*/

//! Yêu cầu:

//? Hàm checkInventory
/*
Kiểm tra xem sản phẩm có sẵn trong kho không. Nếu có, trả về true, nếu không, trả về false.
Thời gian xử lý: 1 giây.
*/

//? Hàm processPayment
/*
  Mô phỏng việc xử lý thanh toán. Nếu thanh toán thành công, trả về chuỗi "Payment Successful".
  Thời gian xử lý: 2 giây.
*/

//? Hàm confirmOrder
/*
  Xác nhận đơn hàng sau khi thanh toán thành công. Trả về chuỗi "Order Confirmed".
  Thời gian xử lý: 1 giây.
*/

//? Hàm placeOrder:
/*
Kết hợp tất cả các bước trên để đặt hàng.
Nếu sản phẩm có sẵn trong kho, tiến hành thanh toán và xác nhận đơn hàng.
Nếu sản phẩm không có sẵn, trả về chuỗi "Product out of stock".
*/

// import 'dart:async';

// Kiểm tra hàng tồn kho
// Future<bool> checkInventory(String product) async {
//   print("Checking inventory for $product...");

//   await Future.delayed(Duration(seconds: 1));
//   bool isAvailable = true;
//   print(isAvailable ? "$product is in stock." : "$product is out of stock.");
//   return isAvailable;
// }

// Future<String> processPayment(String product) async {
//   print("Processing payment for $product...");
//   await Future.delayed(Duration(seconds: 2));
//   return "Payment Successful";
// }

// Future<String> confirmOrder(String product) async {
//   print("Confirming order for $product...");

//   await Future.delayed(Duration(seconds: 1));
//   return "Order Confirmed";
// }

// Future<String> placeOrder(String product) async {
//   bool isAvailable = await checkInventory(product);
//   if (!isAvailable) {
//     return "Product out of stock";
//   }

//   String paymentStatus = await processPayment(product);
//   print(paymentStatus);

//   String confirmation = await confirmOrder(product);
//   print(confirmation);

//   return confirmation;
// }

// void main() async {
//   String product = "Laptop";
//   print("Placing order for $product...");
//   String result = await placeOrder(product);
//   print("Order result: $result");
// }

//! Giải bài tập

//? 1: Hàm kiểm tra hàng tồn kho

// Future<bool> checkInventory(String product) async {
//   print('Kiểm tra hàng tồn kho cho sản phẩm: $product...');
//   await Future.delayed(Duration(seconds: 1));
//   // Giả lập sản phẩm có sẵn hoặc ko
//   return Random().nextBool();
// }
// //? Hàm đặt hàng
// Future<String> placeOrder(String product) async {
//   // Bước 1: Kiểm tra hàng tồn kho
//   bool inStock = await checkInventory(product);

//   if (!inStock) {
//     return 'Product out of stock';
//   }

//   // Bước 2: Xử lý thanh toán
//   String paymentStatus = await processPayment(product);
//   print(paymentStatus);

//   // Bước 3: Xác nhận đơn hàng
//   String confirmation = await confirmOrder(product);
//   return confirmation;
// }

// // Hàm xử lý thanh toán
// Future<String> processPayment(String product) async {
//   print('Xử lý thanh toán cho sản phẩm: $product...');
//   await Future.delayed(Duration(seconds: 2));
//   // Giả lập thanh toán thành công
//   return 'Payment Successful';
// }

// //? Hàm xác nhận đơn hàng
// Future<String> confirmOrder(String product) async {
//   print('Xác nhận đơn hàng cho sản phẩm: $product...');
//   await Future.delayed(Duration(seconds: 1));
//   // Giả lập xác nhận đơn hàng thành công
//   return 'Order Confirmed';
// }

// void main() async {
//   print('Bắt đầu đặt hàng...');

//   // Đặt hàng cho sản phẩm "Laptop"
//   String orderStatus = await placeOrder('Laptop');
//   print(orderStatus);

//   print('Kết thúc đặt hàng');
// }

//! 1. Stream trong Dart
/*
?   Stream là một đối tượng trong Dart cho phép bạn làm việc với một chuỗi các giá trị bất đồng bộ. 
?   Thay vì nhận tất cả dữ liệu cùng một lúc, 
?   bạn có thể nhận dữ liệu theo thời gian, khi dữ liệu có sẵn. 
?   Đây là cách để xử lý các sự kiện, chẳng hạn như thông báo từ API, dữ liệu từ các tệp lớn
*/

//! 2. Các loại Stream:
//? Single subscription stream:
//  Stream này chỉ cho phép một listener (người lắng nghe) tại một thời điểm.
//  Đây là loại phổ biến nhất và thường được sử dụng để xử lý các sự kiện.

//? Broadcast stream:
//  Stream này có thể có nhiều listener cùng một lúc.
//  Đây là loại thường được sử dụng cho các sự kiện phát sóng rộng rãi, như thông báo trạng thái hệ thống.

//! 3. ví dụ đơn giản về việc sử dụng Stream

//? Khi tạo một stream, bạn sử dụng async*
//  để định nghĩa một hàm sinh ra stream
// Stream<int> countStream(int max) async* {
//   for (int i = 1; i <= max; i++) {
//     await Future.delayed(Duration(seconds: i + 1));

//     //? keyword yield để cung cấp các giá trị cho stream.
//     print("Yield value sau ${i + 1} giây");
//     yield i;
//   }
// }

// void main() async {
//   //? await for

//   //! Lắng nghe Stream
//   //? Cách 1:
//   //? Để lắng nghe một stream, bạn sử dụng cú pháp await for
//   // để xử lý từng giá trị của stream khi nó có sẵn hoặc có giá trị.
//   // await for (int value in countStream(5)) {
//   //   print('Nhận: $value');
//   // }

//   //? Cách 2:
//   countStream(5).listen((value) {
//     print('Nhận: $value');
//   });
// }

// import 'dart:async';

// // Hàm tạo Stream đếm ngược từ n về 0
// Stream<int> countdownStream(int n) async* {
//   for (int i = n; i >= 0; i--) {
//     yield i; 
//     await Future.delayed(Duration(seconds: 1)); 
//   }
// }

// void main() async {

//   await for (var value in countdownStream(10)) {
//     print(value);
//     if (value == 0) {
//       print("Countdown complete!");
//     }
//   }
// }


//! 5. StreamController
/*
  StreamController là một đối tượng cho phép bạn tạo và kiểm soát một Stream. 
  Nó cung cấp một cách để bạn có thể thêm dữ liệu, lỗi, 
  hoặc đóng stream từ bên ngoài. 
  
  StreamController rất hữu ích khi bạn muốn kiểm soát hoàn toàn cách thức 
  và thời điểm mà dữ liệu được phát vào một stream.
*/

// //? Ví dụ 1: Tạo và sử dụng StreamController:
// import 'dart:async';

// void main() async {
//   // Tạo StreamController

//   //? 1. StreamController:
//   //  Làm việc như một "người phát" dữ liệu (publisher) cho một stream.
//   //  Nó có thể kiểm soát khi nào dữ liệu được thêm vào stream, và khi nào stream được đóng.
//   final StreamController<int> controller = StreamController<int>();

//   // Lắng nghe stream
//   //? 2. controller.stream.listen
//   //  Để lắng nghe dữ liệu từ stream và xử lý nó
//   controller.stream.listen(
//     (value) => print('Nhận dc: $value'),
//     onDone: () => print('Đóng và kết thúc StreamController'),
//   );

//   // Thêm dữ liệu vào stream
//   //? 3. sink.add():
//   // Dùng để thêm dữ liệu vào stream
//   await Future.delayed(Duration(seconds: 1), () {
//     controller.sink.add(1);
//   });
//   await Future.delayed(Duration(seconds: 2), () {
//     controller.sink.add(2);
//   });
//   await Future.delayed(Duration(seconds: 3), () {
//     controller.sink.add(3);
//   });

//   // Đóng stream khi hoàn tất
//   //? controller.close()
//   // Đóng stream khi không còn dữ liệu nào được phát đi.
//   // Nếu không gọi phương thức này, stream có thể tiếp tục mở và gây rò rỉ bộ nhớ.
//   controller.close();
// }
// import 'dart:async';
// class StreamDemo {
//   int _counter = 0;
//   int _errCounter = 0;

//   //? Controller có thể sink data, sink error và close
//   final _controller = StreamController<int>();

//   Stream<int> get demoStream => _controller.stream;

//   void addError() {
//     _errCounter += 1;
//     _controller.sink.addError(
//         Error.safeToString('This is an Error \$$_errCounter in Stream'));
//   }

//   void dispose() {
//     _controller.close();
//   }

//   void increment() {
//     _counter += 1;
//     _controller.sink.add(_counter);
//   }
// }

// // //? Ví dụ 2: Tạo và sử dụng StreamController


// void main(List<String> args) async {
//   final streamDemo = StreamDemo();
//   streamDemo.demoStream.listen(
//     (event) {
//       print("event value: $event");
//     },
//     onError: (err) {
//       print('Error!!!. $err');
//     },
//     onDone: () {
//       print('Stream is done and closed');
//     },
//   );

//   for (int i = 0; i < 4; i++) {
//     if (i % 2 == 0) {
//       streamDemo.addError();
//     } else {
//       streamDemo.increment();
//     }
//     await Future.delayed(Duration(seconds: 2));
//   }

//   streamDemo.dispose();
// }

// import 'dart:async';
// import 'dart:math';

// void generateTemperature(StreamController<double> controller) {
//   Random random = Random();
//   Timer.periodic(Duration(seconds: 2), (timer) {
//     double temperature = 20.0 + random.nextDouble() * 10;
//     controller.add(temperature);
//   });                                                                                                                                                                             
// }

// void main() {

//   final StreamController<double> temperatureController = StreamController<double>();

//   temperatureController.stream.listen((temperature) {
//     print("Nhiệt độ hiện tại: ${temperature.toStringAsFixed(2)}°C");
//   });

//   generateTemperature(temperatureController);

//   Future.delayed(Duration(seconds: 10), () {
//     print("Dừng cảm biến và đóng StreamController.");
//     temperatureController.close();
//   });                                       
// }


// import 'dart:async';
// import 'dart:math';

// void generateTemperature(StreamController<double> controller) {
//   Timer.periodic(Duration(seconds: 2), (timer) {
//     double temperature = 20.0 + Random().nextDouble() * 10;
//     controller.add(temperature);
//   });
// }

// void main() {
//   final StreamController<double> temperatureController = StreamController<double>();
//   temperatureController.stream.listen((temperature) {
//     print('Nhiệt độ hiện tại: $temperature°C');
//   });
//   generateTemperature(temperatureController);
// }

//! Isolate
// Isolate là khái niệm để giúp Dart có thể chạy song song (parallel), không phải đồng thời (concurrent).
// Isolate gần giống với Thread ở ngôn ngữ khác, nhưng nó không share memory, chỉ giao tiếp qua message.
// Isolate thường ít gặp với developer mới, chủ yếu chỉ sử dụng duy nhất isolate main trong các ứng dụng Dart

//! Tại sao sử dụng Isolate?
//? 1. Dart chạy trên Event Loop, và tất cả các tác vụ mặc định đều chạy trên một luồng chính
//?     Khi một tác vụ nặng (như tính toán lớn hoặc xử lý tệp) chạy trên luồng chính,
//?     nó có thể làm cho giao diện người dùng bị treo hoặc không phản hồi.

//? 2. Isolate giúp xử lý các tác vụ đồng thời mà không ảnh hưởng đến các tác vụ khác trên luồng chính,
//?    bằng cách tách các tác vụ ra thành những phần độc lập,
//?    không chia sẻ bộ nhớ trực tiếp với luồng chính.
//! Vài usecase nên sử dụng isolate
//  - Parsing và decoding những data JSON siêu lớn
//  - Xử lý, nén photo, video hoặc audio.Processing and compressing photos, audio and video.
//  - Thực hiện các tác vụ liên quan đến đọc file, ghi file hệ thống
//  - Thực hiện gọi nhiều request tới network

//! Sử dụng Isolate
// Ở phần này hướng dẫn cách sử dụng Isolate cơ bản => Isolate.run(), nhanh chóng nhưng sẽ khó custom.
// Để custom Isolate là một phạm trù của Dart Advance

import 'dart:convert'; // Để chuyển đổi JSON
import 'dart:io';
import 'dart:isolate'; // Để đọc tệp từ hệ thống tệp

// Hàm để đọc tệp JSON từ thư mục assets
Future<Map<String, dynamic>> loadJsonData() async {
  // Đường dẫn đến tệp JSON
  final file = File('assets/data.json');

  // Đọc nội dung tệp
  String jsonString = await file.readAsString();
  print("nội dung tệp: $jsonString");

  // Chuyển đổi chuỗi JSON thành đối tượng Map
  final jsonResponse = json.decode(jsonString);

  return jsonResponse;
}

void main() async {
  // Đọc dữ liệu JSON và in ra màn hình console
  //? Sử dụng Isolate.run() để đưa các tác vụ liên quan đến đọc file sang một Isolate khác,
  //? sau khi đã thực hiện xong thì chỉ cần trả kết quả về
  Map<String, dynamic> jsonData = await Isolate.run(loadJsonData);
  print('Name: ${jsonData['name']}');
  print('Age: ${jsonData['age']}');
  print('Email: ${jsonData['email']}');
}

//! Bài Tập: Xử lý heavy task

// import 'dart:async';
// import 'dart:isolate';

// void main(List<String> args) async {
//   var timer = Timer.periodic(Duration(milliseconds: 500), (timer) {
//     if (timer.tick % 2 == 0) {
//       print('Loading ... ${timer.tick / 2} sec');
//     }
//   });

//   print("Start");
//   //? TH1: Ko sử dụng isolate cho heavy task
//   // final result = await heavyTask();

//   //? TH2: Sử dụng Isolate cho heavy task
//   final result = await Isolate.run(heavyTask);
//   print("value is: $result");
//   print('End');

//   timer.cancel();
// }

// Future<int> heavyTask() async {
//   var value = 0;
//   for (var i = 0; i < 4000000000; i++) {
//     value += i;
//   }
//   return value;
// }