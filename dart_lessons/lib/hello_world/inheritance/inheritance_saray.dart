import 'package:dart_lessons/hello_world/inheritance/inheritance_ev.dart';

class Saray extends Ev{
  int kule_sayisi;

  Saray({required this.kule_sayisi, required int pencere_sayisi}) :
        super(pencere_sayisi: pencere_sayisi);
}