import 'package:dart_lessons/hello_world/override/override_hayvan.dart';
import 'package:dart_lessons/hello_world/override/override_kedi.dart';
import 'package:dart_lessons/hello_world/override/override_kopek.dart';
import 'package:dart_lessons/hello_world/override/override_memeli.dart';

void main(){
  var hayvan = Hayvan();
  var memeli = Memeli();
  var kedi = Kedi();
  var kopek = Kopek();

  hayvan.sesCikar(); //kalıtım yok
  memeli.sesCikar(); //kalıtım var üst classın metoduna erişti
  kedi.sesCikar(); //kalıtım var kendi metoduna erişti
  kopek.sesCikar(); //kalıtım var kendi metoduna erişti

}