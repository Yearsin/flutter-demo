// ignore_for_file: unused_field

void main() {
  var p = Person();
  p.run();
}

class Person {
  late String name;
  late int age;
  late String _birthday;
  
  bool get isAdult => age > 18;

  void run () {
    print('Person run....');
  }
}