import 'dart:collection';

void main(){
  var sayilar = {"Bir" : 1, "İki": 2};
  var iller = HashMap<int , String>();

  iller [16] = "BURSA";
  iller [34] = "İstanbul";
  print(iller);


  iller [16] = "Yeni Bursa";

  String il = iller [34]!;
  print(il);

  print("Boyut: ${iller.length}");
  print("Boş kontrol: ${iller.isEmpty}");


  var anahtarlar = iller.keys;
  for(var a in anahtarlar){
    print("$a -> ${iller[a]}");
  }
  
  iller.remove(16);
  print(iller);


}