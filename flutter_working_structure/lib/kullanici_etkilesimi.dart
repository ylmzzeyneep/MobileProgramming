import 'package:flutter/material.dart';

class KullaniciEtkilesimi extends StatefulWidget {
  const KullaniciEtkilesimi({super.key});

  @override
  State<KullaniciEtkilesimi> createState() => _KullaniciEtkilesimiState();
}

class _KullaniciEtkilesimiState extends State<KullaniciEtkilesimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kullanıcı Etkileşimi"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text("Silmek istediğinizden emin misiniz?"),
                backgroundColor: Colors.deepPurpleAccent,
                action: SnackBarAction(label: "Evet", onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Silindi"),),);
                  },),
                  )
            );
          }, child: const Text("SnackBar")
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Başlık"),
                    content: const Text("Bu bir özel alert mesajıdır."),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Dialog'u kapatır
                        },
                        child: const Text("Tamam"),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text("Alert (Özel)"),
          )

        ],),
      )
      );
  }
}
