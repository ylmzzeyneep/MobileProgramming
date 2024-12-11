void main(){
  var ogrenciAdi = "Zeynep";
  var ogrenciYasi = 22;
  var ogrenciBoy = 1.68;
  var ogrenciBasHarf= 'Z';
  var ogrenciDevamEdiyorMu = true;

  print(ogrenciAdi);
  print(ogrenciYasi);
  print(ogrenciBoy);
  print(ogrenciBasHarf);
  print(ogrenciDevamEdiyorMu);



  int urun_id = 3416;
  String urun_adi = "Kol Saati";
  int urun_adet = 100;
  double urun_fiyat = 149.99;
  String urun_tedarikci = "Rolex";

  print("Ürün ID           :$urun_id");
  print("Ürün Adı          :$urun_adi");
  print("Ürün Adet         :$urun_adet");
  print("Ürün Fiyat        :$urun_fiyat");
  print("Ürün Tedarikçi    :$urun_tedarikci");


  int a = 100;
  int b = 200;
  print("$a ve $b nin toplamı: ${a+b}");


  //final kodlamayı çalıştırdığımızda hafızada oluşur.
  //const değişkeni tanımladığımızda hafızada oluşur. Görsel nesnelerde kullanırız.

  //sayısaldan sayısala dönüşüm
  int i = 56;
  double d = 78.67;
  int sonuc1 = d.toInt();
  double sonuc2 = i.toDouble();
  print(sonuc1);
  print(sonuc2);


  //sayısaldan metine dönüştürme
  String sonuc3 = i.toString();
  String sonuc4 = d.toString();
  print(sonuc3);
  print(sonuc4);


  //metinden sayısala dönüştürme
  String yazi1 = "25";
  String yazi2 = "51.45";
  int sonuc5 = int.parse(yazi1);
  double sonuc6 = double.parse(yazi2);
  print(sonuc5);
  print(sonuc6);

}