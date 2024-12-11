import 'package:dart_lessons/hello_world/composition/composition_filmler.dart';
import 'package:dart_lessons/hello_world/composition/composition_kategoriler.dart';
import 'package:dart_lessons/hello_world/composition/composition_yonetmenler.dart';

void main() {
  var k1 = Kategoriler(kategori_id: 1, kategori_adi: "Dram");
  var k2 = Kategoriler(kategori_id: 2, kategori_adi: "Komedi");

  var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_adi: "Quentin Tarantino");
  var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_adi: "Christopher Nolan");


  var f1 = Filmler(film_id: 1,
      film_adi: "Django",
      film_yil: 2023,
      kategori: k1,
      yonetmen: y1);

  print("Film id             :${f1.film_id}");
  print("Film adi            :${f1.film_adi}");
  print("Film yıl            :${f1.film_yil}");
  print("Film kategori       :${f1.kategori.kategori_adi}");
  print("Film yonetmen       :${f1.yonetmen.yonetmen_adi}");
}