//Her class extends özelliğiyle sadece bir tane classtan özellik alabilir.
import 'package:dart_lessons/hello_world/inheritance/inheritance_ev.dart';
import 'package:dart_lessons/hello_world/inheritance/inheritance_saray.dart';
import 'package:dart_lessons/hello_world/inheritance/inheritance_villa.dart';


void main(){
  var topkapiSarayi = Saray(kule_sayisi: 10, pencere_sayisi: 300);
  print(topkapiSarayi.kule_sayisi);
  print(topkapiSarayi.pencere_sayisi);

  var bogazVilla = Villa(garajVarMi: true, pencere_sayisi: 50);
  print(bogazVilla.garajVarMi);
  print(bogazVilla.pencere_sayisi);

  //tip kontorlü
  if(topkapiSarayi is Saray){
    print("Saraydır.");
  }else{
    print("Saray değildir.");
  }

  //downcasting
  var ev = Ev(pencere_sayisi : 10);
  var saray = ev as Saray;

  //upcasting
  var s = Saray(kule_sayisi : 3, pencere_sayisi : 100);
  Ev e = s;

}