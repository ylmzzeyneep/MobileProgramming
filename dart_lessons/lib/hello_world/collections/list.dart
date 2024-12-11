void main(){
  var plakalar = [ 16, 23, 6];
  var meyveler = <String>[];

  //verie ekleme
  meyveler.add("muz");
  meyveler.add("çilek");
  meyveler.add("ananas");
  print(meyveler);

  //veri güncelleme
  meyveler[1] = "kiraz";
  print(meyveler);

  //istenilen yere veri ekleme
  meyveler.insert(1, "portakal");

  //veri okuma
  String meyve = meyveler[2];
  print(meyve);
  
  print("Boyut: ${meyveler.length}");
  print("Boş kontrol: ${meyveler.isEmpty}");


  //for each
  for(var meyve in meyveler){
    print("Sonuç: $meyve");
  }

  //liste tersine çevirme
  var liste = meyveler.reversed.toList();
  print(liste);

  //listeyi sıralama
  meyveler.sort();
  print(meyveler);

  //listeden veri silme
  meyveler.removeAt(2);
  print(meyveler);
}