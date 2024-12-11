import 'package:flutter/material.dart';
import 'package:flutter_working_structure/kisiler.dart';
import 'package:flutter_working_structure/resultpage.dart';

class GamePage extends StatefulWidget {
  Kisiler kisi;
  GamePage({required this.kisi});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GamePage"),
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_sharp)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(("${widget.kisi.ad} - ${widget.kisi.yas} - ${widget.kisi.boy} - ${widget.kisi.bekar}")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (contex)=> const ResultPage()));
            },child: const Text("Bitti")
            ),
          ],
        ),
      ),
    );
  }
}
