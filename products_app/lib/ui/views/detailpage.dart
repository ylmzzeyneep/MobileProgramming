import 'package:flutter/material.dart';
import 'package:products_app/data/entity/urunler.dart';

class DetailPage extends StatefulWidget {
  Urunler urun;
  DetailPage({required this.urun});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.urun.ad),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/${widget.urun.resim}"),
            Text("${widget.urun.fiyat} TL", style: const TextStyle(fontSize: 50),),
          ],
        ),
      ),
    );
  }
}
