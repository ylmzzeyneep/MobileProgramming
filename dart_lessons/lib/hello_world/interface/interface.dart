//Bir sınıf birden fazla interface alabilir
import 'package:dart_lessons/hello_world/interface/interface_A.dart';

void main(){
  var a = A();
  print(a.degisken);
  a.method1();
  print(a.method2());


}