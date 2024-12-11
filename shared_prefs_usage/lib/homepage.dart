import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int sayac = 0;

  @override
  void initState() {
    super.initState();
    //test();
    sayacKontrol();
  }
  Future<void>sayacKontrol()async{
    var sp = await SharedPreferences.getInstance();
    sayac = sp.getInt("sayac") ?? 0;
    setState(() {
      sayac = sayac+1;
    });
    sp.setInt("sayac", sayac);
  }

  Future<void>test()async{
    var sp = await SharedPreferences.getInstance();

    //Veri kaydı
    sp.setString("ad", "Zeynep");
    sp.setInt("yas", 23);
    sp.setDouble("boy", 1.68);
    sp.setBool("bekar", true);

    var arkadasListesi = <String>[];
    arkadasListesi.add("Anıl");
    arkadasListesi.add("Kerem");
    
    sp.setStringList("arkadasListesi", arkadasListesi);
    

    //Veri okuma
    String gelenAd = sp.getString("ad") ?? "isim yok";
    int gelenYas = sp.getInt("yas") ?? 0;
    double gelenboy = sp.getDouble("boy") ?? 0.0;
    bool gelenBekar = sp.getBool("bekar") ?? false;

    print("Gelen ad      : $gelenAd");
    print("Gelen yas     : $gelenYas");
    print("Gelen boy     : $gelenboy");
    print("Gelen bekar   : $gelenBekar");

    var gelenArkadasListesi = sp.getStringList("arkadasListesi") ?? null;
    if(gelenArkadasListesi != null){
      for(var a in gelenArkadasListesi){
        print("Arkadaş: $a");
      }
    }

    //Veriyi sil
    //sp.remove("ad");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Preferences"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Açılış Sayısı : $sayac",style: const TextStyle(fontSize: 50),)
          ],
        ),
      ),
    );
  }
}
