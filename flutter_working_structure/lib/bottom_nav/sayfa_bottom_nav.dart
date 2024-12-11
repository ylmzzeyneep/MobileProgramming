import 'package:flutter/material.dart';
import 'package:flutter_working_structure/bottom_nav/sayfa_bir.dart';
import 'package:flutter_working_structure/bottom_nav/sayfa_iki.dart';
import 'package:flutter_working_structure/bottom_nav/sayfa_uc.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int secilenIndeks = 0;
  var sayfalar = [const SayfaBir(), const SayfaIki(), const SayfaUc()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation"),
      ),
      body: sayfalar[secilenIndeks],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: "Bir"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: "İki"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "Üç"),
        ],
        currentIndex: secilenIndeks,
        onTap: (indeks) {
          setState(() {
            secilenIndeks = indeks; // İndeksi günceller ve sayfayı değiştirir
          });
        },
      ),
    );
  }
}
