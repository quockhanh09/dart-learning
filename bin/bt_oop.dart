import 'dart:math';

abstract class Employee {
  String name;
  int id;

  Employee({
    required this.name,
    required this.id,
  });

  double calculateSalary();
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee({ required String name, required int id,required this.monthlySalary,}) : super(name: name, id: id);

  @override
  double calculateSalary() {
    return monthlySalary;
  }
}

class PartTimeEmployee extends Employee {
  double salaryRate;
  int workedHour;
  PartTimeEmployee({
    required String name,
    required int id,
    required this.salaryRate,
    required this.workedHour,
  }) : super(name: name, id: id);

  @override
  double calculateSalary() {
    return salaryRate * workedHour;
  }
}
void main() {
  List<Employee> employees = [
    FullTimeEmployee(name: 'duy ', id: 1, monthlySalary: 200000),
    PartTimeEmployee(name: 'quoc', id: 2, salaryRate: 2, workedHour: 300000),
    FullTimeEmployee(name: 'huy', id: 3, monthlySalary: 400000),
    PartTimeEmployee(name: 'nhi', id: 4, salaryRate: 3, workedHour: 500000),
  ];

  double totalSalary = 0;
  for (var employee in employees) {
    totalSalary += employee.calculateSalary();
  }

  double totalFullTimeSalary = 0;
  double totalPartTimeSalary = 0;

  for (var employee in employees) {
    if (employee is FullTimeEmployee) {
      totalFullTimeSalary += employee.calculateSalary();
    } else if (employee is PartTimeEmployee) {
      totalPartTimeSalary += employee.calculateSalary();
    }
  }
  print('Tổng lương của FullTimeEmployee: $totalFullTimeSalary');
  print('Tổng lương của PartTimeEmployee: $totalPartTimeSalary');
  print('Tổng lương của tất cả các nhân viên: ${totalSalary}');
}

//b2

// abstract class Shape {
//   double area();
//   double perimeter();
// }

// class Circle extends Shape {
//   double radius;
//   Circle(this.radius);

//   @override
//   double area() {
//     return pi * radius * radius;
//   }

//   @override
//   double perimeter() {
//     return 2 * pi * radius;
//   }
// }

// class Rectangle extends Shape {
//   double width, height;
//   Rectangle(this.width, this.height);

//   @override
//   double area() {
//     return width * height;
//   }

//   @override
//   double perimeter() {
//     return 2 * (width + height);
//   }
// }

// class Square extends Shape {
//   double side;
//   Square(this.side);

//   @override
//   double area() {
//     return side * side;
//   }

//   @override
//   double perimeter() {
//     return 4 * side;
//   }
// }

// void main() {

//   List<Shape> shapes = [
//     Circle(3),
//     Rectangle(2, 3),
//     Square(3),
//   ];
//   double totalArea = 0;
//   double totalPerimeter = 0;

//   for (var shape in shapes) {
//     totalArea += shape.area();
//     totalPerimeter += shape.perimeter();
//   }

//   print('Tổng diện tích: $totalArea');
//   print('Tổng chu vi: $totalPerimeter');
// }


// b3