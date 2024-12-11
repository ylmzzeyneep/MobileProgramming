import 'package:dart_lessons/hello_world/inheritance/inheritance_ev.dart';

class Villa extends Ev{
  bool garajVarMi;

  Villa({required this.garajVarMi, required int pencere_sayisi}) :
        super(pencere_sayisi: pencere_sayisi);
}