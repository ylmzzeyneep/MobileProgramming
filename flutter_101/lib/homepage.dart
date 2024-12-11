import 'package:flutter/material.dart';
import 'package:flutter_101/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//left - start leading
//right - end - trailing
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yüksekliği:$ekranYuksekligi");
    print("Ekran Genişliği: $ekranGenisligi");

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza", style: TextStyle(color: yaziRenk1, fontFamily: "Pacifico", fontSize: ekranGenisligi/19),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: ekranYuksekligi/43),
              child: Text(d!.pizzaBaslik, style: TextStyle(fontSize: 36, color: anaRenk, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Image.asset("images/pizza_resim.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: (){},
                      style: TextButton.styleFrom(backgroundColor: anaRenk),
                      child: Text(d.peynirYazi, style: TextStyle(color: yaziRenk1),),
                  ),
                  TextButton(onPressed: (){},
                    style: TextButton.styleFrom(backgroundColor: anaRenk),
                    child: Text(d.sucukYazi, style: TextStyle(color: yaziRenk1),),
                  ),
                  TextButton(onPressed: (){},
                    style: TextButton.styleFrom(backgroundColor: anaRenk),
                    child: Text(d.zeytinYazi, style: TextStyle(color: yaziRenk1),),
                  ),
                  TextButton(onPressed: (){},
                    style: TextButton.styleFrom(backgroundColor: anaRenk),
                    child: Text(d.biberYazi, style: TextStyle(color: yaziRenk1),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(d.teslimatSure, style: TextStyle(fontSize: 22, color: yaziRenk2, fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(d.teslimatBaslik, style: TextStyle(fontSize: 22, color: anaRenk, fontWeight: FontWeight.bold),),
                  ),
                  Text(d.pizzaAciklama,
                      style: TextStyle(fontSize: 22, color: yaziRenk2), textAlign: TextAlign.center,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(d.fiyat, style: TextStyle(fontSize: 22, color: anaRenk, fontWeight: FontWeight.bold),),
                  const Spacer(),
                  SizedBox(width: ekranGenisligi/2, height: ekranYuksekligi/14,
                  child: TextButton(onPressed: (){},
                    style: TextButton.styleFrom(
                        backgroundColor: anaRenk,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                    child: Text(d.buttonYazi, style: TextStyle(color: yaziRenk1, fontSize: 18),),
                    ),
                  ),
                ],
              ),
            ),
          ],
      ),
    );
  }
}
