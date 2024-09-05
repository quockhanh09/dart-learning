import 'dart:convert';
import 'dart:io';
import 'dart:math';

class Transaction {
  String type; // "income" or "expense"
  String category;
  DateTime date;
  double amount;
  String note;

  Transaction({
    required this.type,
    required this.category,
    required this.date,
    required this.amount,
    required this.note,
  });

  Map<String, dynamic> toJson() => {
        'type': type,
        'category': category,
        'date': date.toIso8601String(),
        'amount': amount,
        'note': note,
      };

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      type: json['type'],
      category: json['category'],
      date: DateTime.parse(json['date']),
      amount: json['amount'],
      note: json['note'],
    );
  }
}

class FinanceManager {
  List<Transaction> transactions = [];

  void addTransaction(Transaction transaction) {
    transactions.add(transaction);
  }

  void saveToFile(String fileName) {
    final file = File(fileName);
    final data = transactions.map((t) => t.toJson()).toList();
    file.writeAsStringSync(jsonEncode(data));
  }

  void loadFromFile(String fileName) {
    final file = File(fileName);
    if (file.existsSync()) {
      final data = jsonDecode(file.readAsStringSync()) as List;
      transactions = data.map((json) => Transaction.fromJson(json)).toList();
    }
  }

  double getTotalIncome() {
    return transactions
        .where((t) => t.type == 'income')
        .fold(0.0, (sum, t) => sum + t.amount);
  }

  double getTotalExpense() {
    return transactions
        .where((t) => t.type == 'expense')
        .fold(0.0, (sum, t) => sum + t.amount);
  }

  double calculateCompoundInterest(
      double principal, double rate, int timesPerYear, int years) {
    return principal * pow((1 + rate / timesPerYear), timesPerYear * years);
  }
}

void main() {
  final financeManager = FinanceManager();
  final fileName = 'transactions.json';

  // Load previous data if available
  financeManager.loadFromFile(fileName);

  while (true) {
    print('\nChọn chức năng:');
    print('1. Sổ thu chi');
    print('2. Tính lãi khi gửi tiết kiệm (lãi kép)');
    print('Q. Thoát');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print('\nNhập loại giao dịch (income/expense):');
      String type = stdin.readLineSync()!;
      print('Nhập nhóm:');
      String category = stdin.readLineSync()!;
      print('Nhập ngày (yyyy-mm-dd):');
      String dateInput = stdin.readLineSync()!;
      DateTime date = DateTime.parse(dateInput);
      print('Nhập số tiền:');
      double amount = double.parse(stdin.readLineSync()!);
      print('Nhập ghi chú:');
      String note = stdin.readLineSync()!;

      final transaction = Transaction(
        type: type,
        category: category,
        date: date,
        amount: amount,
        note: note,
      );
      financeManager.addTransaction(transaction);
      financeManager.saveToFile(fileName);

      print('Giao dịch đã được lưu.');

      print('\nTổng thu trong tháng: ${financeManager.getTotalIncome()}');
      print('Tổng chi trong tháng: ${financeManager.getTotalExpense()}');
    } else if (choice == '2') {
      print('\nNhập số tiền gốc:');
      double principal = double.parse(stdin.readLineSync()!);
      print('Nhập lãi suất hàng năm (%):');
      double rate = double.parse(stdin.readLineSync()!) / 100;
      print('Nhập số lần tính lãi mỗi năm:');
      int timesPerYear = int.parse(stdin.readLineSync()!);
      print('Nhập số năm gửi:');
      int years = int.parse(stdin.readLineSync()!);

      double futureValue = financeManager.calculateCompoundInterest(
          principal, rate, timesPerYear, years);
      print(
          'Giá trị tương lai của khoản tiền gửi sau $years năm là: $futureValue');
    } else if (choice?.toUpperCase() == 'Q') {
      print('Chào tạm biệt!');
      break;
    } else {
      print('Lựa chọn không hợp lệ, vui lòng chọn lại.');
    }
  }
}
