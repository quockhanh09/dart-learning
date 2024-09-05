import 'api_service.dart';
import 'user_model.dart';

void main() async {
  ApiService apiService = ApiService();
  print("Bắt đầu gọi API");
  User? user = await apiService.fetchRandomUser();

  if (user != null){
    print("Data API trả về");
    print('Gender: ${user.gender}');
    print('Email: ${user.email}');
    print('First Name: ${user.firstName}');
    print('Last Name: ${user.lastName}');
    print('Age: ${user.age}');
  }
}