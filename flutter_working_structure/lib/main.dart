import 'package:flutter/material.dart';
import 'package:flutter_working_structure/kullanici_etkilesimi.dart';
import 'bottom_nav/sayfa_bottom_nav.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: KullaniciEtkilesimi(),
    );
  }
}

