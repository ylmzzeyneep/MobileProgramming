import 'package:dart_lessons/hello_world/interface/my_interface.dart';

class A implements MyInterface{
  @override
  int degisken = 10;

  @override
  void method1() {
    print("Method 1");
  }

  @override
  String method2() {
    return "Method 2";
  }

}