
void main(List<String> arguments){
  // print("Hello, World!");
  //! Operator
//! Unary postfix (toán tử đơn hậu tố)
  // Toán tử này áp dụng sau 1 biểu thức (expression)
  // bao gồm các toán tử:
  //  - tăng giảm hậu tố
  //  - gọi hàm
  //  - truy cập mảng
  //  - kiểm tra null

  // //?  tăng giảm hậu tố
  int x = 5;
  x++; // Tăng giá trị x lên 1 (x = x +1)

  print(x);
  x--;
  print(x);
// //? gọi hàm
  // gọi là 1 hành động gọi tới 1 hàm đã dc định nghĩa,
  // để thực thi đoạn code trong hàm đó và nhận lại kết quả (nếu có)
  // cú pháp: tên của hàm + ()
  // () chính là toán tử đơn hậu tố
  // int add(int a, int b) {
  //   return a + b;
  // }

  // int result = add(3, 5); // gọi hàm add vs param truyền vào là 3 và 5
  // print(result);
// //? truy cập mảng
  // List<int> numbers = [1, 2, 3];
  // print(numbers[0]); // Truy cập phần tử đầu tiên trong danh sách, in ra 1
// //? kiểm tra null
  // String? name;
  //  Sử dụng toán tử ?. để kiểm tra null an toàn, in ra null
  // print(name?.length);
  //
  //
//! Unary prefix (Toán tử đơn tiền tố)
  //  Toán tử này áp dụng trước một biểu thức.
  // Unary prefix bao gồm:
  //  - phủ định,
  //  - phủ định bit,
  //  - tăng giảm tiền tố
// phủ định
int y = 3;
int z = -y;
print(z);

bool isTrue = false;
print(!isTrue);
//tăng dần tiền tố
y=5;
++y;
print(y);

int e=3;
print("e: $e");
int f=++e;
print("f: $f, e: $e");
int g=e++;
print("g: $g, e: $e");

// So sánh ++e hoặc e++
// //! Multiplicative (Toán tử nhân chia)
  // Bao gồm các toán tử nhân (*), chia (/), chia lấy phần nguyên (~/), và lấy phần dư (%).
  // int a = 10;
  // int b = 3;
  // print(a * b); // Nhân, in ra 30
  // print(a / b); // Chia, in ra 3.3333333333333335
  // print(a ~/ b); // Chia lấy phần nguyên, in ra 3
  // print(a % b); // Lấy phần dư, in ra 1

  // //! Additive (Toán tử cộng trừ)
  int c = 10;
  int d = 5;
  print(c + d); // Cộng, in ra 15
  print(c - d); // Trừ, in ra 5

  //! Relational and type test (Toán tử so sánh và kiểm tra kiểu)
  // Bao gồm các toán tử so sánh (>, <, >=, <=),
  // ép kiểu (as), và kiểm tra kiểu (is, is!).
  int h = 10;
  int i = 20;
  print(h > i); // So sánh lớn hơn, in ra false
  print(h <= i); // So sánh nhỏ hơn hoặc bằng, in ra true

  dynamic j = "Hello";
  print(j is String); // Kiểm tra j có phải kiểu String không, in ra true
  print(j); // Ép kiểu j thành String, in ra Hello

  // //! Equality (Toán tử so sánh bằng nhau và khác nhau)
  // So sánh bằng nhau (==) và khác nhau (!=).
  int k = 10;
  int l = 10;
  int m = 5;
  print(k == l); // So sánh bằng, in ra true
  print(k != m); // So sánh khác, in ra true

  // //! Logical AND, OR (Toán tử logic AND, OR)
  // Toán tử logic AND (&&) và OR (||), được sử dụng để kết hợp các biểu thức logic.
  bool n = true;
  bool o = false;
  // if (is2047 && isNearly2048) {
  //   print("take a break");
  // }
  print(n && o); // AND logic, in ra false
  print(n || o); // OR logic, in ra true

  // //! Conditional (Toán tử ba ngôi - ternary operator)
  // Toán tử điều kiện (? :) được sử dụng để chọn giữa hai giá trị dựa trên một điều kiện.
  int r = 4;
  String result1 = r > 5 ? "Lớn hơn 5" : "Nhỏ hơn hoặc bằng 5";
  print(result1); // In ra "Lớn hơn 5"

  // //! Cascade (Toán tử cascade)
  // Toán tử cascade (..) cho phép bạn thực hiện nhiều phép gán
  // hoặc gọi hàm trên cùng một đối tượng mà không cần lặp lại tên của đối tượng đó.
  var s = StringBuffer()
    ..write("Hello")
    ..write(" ")
    ..write("World!");
  print(s.toString()); // In ra "Hello World!"
}