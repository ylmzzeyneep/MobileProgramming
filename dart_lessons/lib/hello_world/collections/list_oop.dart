import 'package:dart_lessons/hello_world/collections/list_ogrenciler.dart';

void main(){
  var o1 = Ogrenciler(no: 200, ad: "Zeynep", sinif: "12-A");
  var o2 = Ogrenciler(no: 300, ad: "Anıl", sinif: "9-B");
  var o3 = Ogrenciler(no: 400, ad: "Kerem", sinif: "9-C");


  var ogrencilerListesi = <Ogrenciler>[];
  ogrencilerListesi.add(o1);
  ogrencilerListesi.add(o2);
  ogrencilerListesi.add(o3);

  for (var o in ogrencilerListesi){
    print("No: ${o.no}  Ad: ${o.ad}  Sınıf: ${o.sinif}");
  }

  //sorting
  Comparator<Ogrenciler> s1 = (x,y) => x.no.compareTo(y.no);

  





}