void main() {
  var d = D();
  d.a();
  d.b();
  d.c();
}

class A {
  void a () {
    print('A.a...');
  }
}

class B {
  void b () {
    print('B.b...');
  }
}

class C {
  void c () {
    print('C.c...');
  }
}

// 使用 mixins 的前提是必须有继承
class D extends A with B, C {

}