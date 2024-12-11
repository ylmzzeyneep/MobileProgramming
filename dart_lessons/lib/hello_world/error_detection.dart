void main(){

  //1.Compile error
  String x = "Hello";
    //x=100;

  //2.Runtime error
  var liste = <String>[];
  liste.add("Ahmet");
  liste.add("Zeynep");

  try {
    String isim = liste[4]; //4 eleman yok
    print("Gelen isim: $isim");
  }catch(e){
    print("Listenin boyutunu aştınız.");
  }








}