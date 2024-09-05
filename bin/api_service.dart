import 'dart:async';
import 'dart:convert'; 
import 'package:http/http.dart' as http; 
import 'user_model.dart'; // Import lớp User từ models.dart
class ApiService {
// Hàm gọi API để lấy thông tin User
 Future<User?> fetchRandomUser() async {
   print("Đang gọi API, chờ chút nha...");
    final stopwatch = Stopwatch();
    stopwatch.start();
    final response = await http.get(Uri.parse('https://randomuser.me/api/'));
    stopwatch.stop();
    print("Api xử lý tốn ${stopwatch.elapsed.inSeconds} giây");
    if (response.statusCode == 200) {
    Map<String, dynamic> data = json.decode(response.body);
    var userData = data['results'][0];
// Tạo đối tượng User từ JSON 
    User user =  User.fromJson(userData);
    return user;
  } else {
// In ra lỗi nếu không thành công
   print('Failed to load user data. Status code: ${response.statusCode}'); 
   return null;
  }
 }
}