import 'package:flutter/material.dart';
import 'package:flutter_working_structure/gamepage.dart';
import 'package:flutter_working_structure/homepage.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Result Page"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },child: const Text("Geri Dön")
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).popUntil((route)=> route.isFirst);

            },child: const Text("Anasayfaya Geri Dön")
            ),
          ],
        ),
      ),
    );
  }
}
