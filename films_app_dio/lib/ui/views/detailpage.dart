import 'package:films_app_dio/data/entity/filmler.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  Filmler film;
  DetailPage({required this.film});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.film.ad),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network("http://kasimadalan.pe.hu/filmler_yeni/resimler/${widget.film.resim}"),
            Text("${widget.film.fiyat} TL", style: const TextStyle(fontSize: 50),),
          ],
        ),

      ),

    );
  }
}
