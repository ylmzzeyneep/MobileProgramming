import 'package:dart_lessons/hello_world/oop.dart';

void main(){
  var bmw = Araba(renk: "Mavi", hiz: 100, calisiyorMu: true);
  var sahin = Araba(renk: "Beyaz", hiz: 0, calisiyorMu: false);

  print("Renk          : ${bmw.renk}");
  print("Hız           : ${bmw.hiz}");
  print("Çalışıyor Mu  : ${bmw.calisiyorMu}");

  //dart dilinde overloading kavramı yok.
}