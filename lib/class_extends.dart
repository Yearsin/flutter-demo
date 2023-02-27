// ignore: unused_import
import 'person.dart';
void main() {
  // var student = Student();
  // student.name = 'yearsin';
  // student.age = 16;
  // print(student.isAdult);
  // student.run();

  // 多态
  Person person = Student();
  // is 是对象操作符中的 指定对象类型
  print(person is Student);
  if (person is Student) {
    person.study();
  }
}

class Student extends Person {
  void study () {
    print('Student study...');
  }
  @override
  bool get isAdult => age > 15;

  @override
  void run() {
    print('Student run...');
  }
}