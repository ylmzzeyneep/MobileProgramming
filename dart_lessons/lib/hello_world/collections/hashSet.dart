import 'dart:collection';

void main(){
  var plakalar = HashSet.from([16, 23, 6]);
  var meyveler = HashSet<String>();

  meyveler.add("kiraz");
  meyveler.add("muz");
  meyveler.add("elma");
  print(meyveler);

  meyveler.add("muz");
  print(meyveler);

  String meyve = meyveler.elementAt(2);

  print("Boyut: ${meyveler.length}");
  print("Boş kontrol: ${meyveler.isEmpty}");

  meyveler.remove("muz");
  print(meyveler);







}