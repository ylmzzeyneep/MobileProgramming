import 'package:flutter/material.dart';
import 'package:flutter_working_structure/gamepage.dart';
import 'package:flutter_working_structure/kisiler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int sayac = 0;
  bool kontrol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomePage"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç: $sayac"),
            ElevatedButton(onPressed: (){
              setState(() {
                sayac = sayac+1;
              });
            },
                child: const Text("Tıkla")
            ),
            ElevatedButton(onPressed: (){
              var kisi = Kisiler(ad: "Zeynep", yas: 22, boy: 1.68, bekar: true);
              Navigator.push(context, MaterialPageRoute(builder: (contex)=> GamePage(kisi: kisi)));
            },
              child: const Text("Başla")
            ),
            Visibility(visible: kontrol, child: const Text("Merhaba")),
            Text(kontrol ? "Merhaba" :"Güle Güle", style: TextStyle(color: kontrol ? Colors.blue : Colors.red),),
            ElevatedButton(onPressed: (){
              setState(() {kontrol = true; });
            },
                child: const Text("Durum 1 (True)")
            ),
            ElevatedButton(onPressed: (){
              setState(() {kontrol = false; });
            },
                child: const Text("Durum 2 (False)")
            ),
          ],
      ),
     ),
    );
  }
}
