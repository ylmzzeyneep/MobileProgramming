import 'package:flutter/material.dart';
import 'package:products_app/data/entity/urunler.dart';
import 'package:products_app/ui/views/detailpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Urunler>>urunleriYukle()async {
    var urunlerListesi = <Urunler>[];
    var u1 = Urunler(
        id: 1, ad: "Macbook Pro 14", resim: "bilgisayar.png", fiyat: 43000);
    var u2 = Urunler(
        id: 2, ad: "Rayban Club Master", resim: "gozluk.png", fiyat: 2500);
    var u3 = Urunler(
        id: 3, ad: "Sony ZX Series", resim: "kulaklik.png", fiyat: 4000);
    var u4 = Urunler(id: 4, ad: "Gio Armani", resim: "parfum.png", fiyat: 2000);
    var u5 = Urunler(
        id: 5, ad: "Casino X Series", resim: "saat.png", fiyat: 8000);
    var u6 = Urunler(id: 6, ad: "Dyson V8", resim: "supurge.png", fiyat: 18000);
    var u7 = Urunler(id: 7, ad: "Ipone 13", resim: "telefon.png", fiyat: 32000);
    urunlerListesi.add(u1);
    urunlerListesi.add(u2);
    urunlerListesi.add(u3);
    urunlerListesi.add(u4);
    urunlerListesi.add(u5);
    urunlerListesi.add(u6);
    urunlerListesi.add(u7);
    return urunlerListesi;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ürünler"),),
      body: FutureBuilder<List<Urunler>>(
        future: urunleriYukle(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            var urunlerListesi = snapshot.data;
            return ListView.builder(
                itemCount: urunlerListesi!.length,
                itemBuilder: (context, indeks){
                  var urun = urunlerListesi[indeks];
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(urun: urun)));
                    },
                    child: Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(width: 128, height: 128,
                                child: Image.asset("images/${urun.resim}")),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(urun.ad),
                              const SizedBox(height: 10,),
                              Text("${urun.fiyat} TL", style: const TextStyle(fontSize: 20),),
                              const SizedBox(height: 10,),
                              ElevatedButton(onPressed: (){
                                print("${urun.ad} sepete eklendi.");
                              }, child: const Text("Sepete Ekle"),)
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
            );
          }else{
            return const Center();
          }
        },
      ),
    );
  }
}
