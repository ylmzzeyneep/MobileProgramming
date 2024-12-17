import 'package:contacts_app_dio/data/entity/kisiler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/detailpage_cubit.dart';

class DetailPage extends StatefulWidget {
  Kisiler kisi;
  DetailPage({required this.kisi});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  @override
  void initState() {
    super.initState();
    var kisi = widget.kisi;
    tfKisiAdi.text = kisi.kisi_ad;
    tfKisiTel.text = kisi.kisi_tel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detay Sayfa"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            children: [
              TextField(controller: tfKisiAdi, decoration: const InputDecoration(hintText: "Kişi Adı"),),
              TextField(controller: tfKisiTel, decoration: const InputDecoration(hintText: "Kişi Adı"),),
              ElevatedButton(onPressed: (){
                context.read<DetailPageCubit>().guncelle(int.parse(widget.kisi.kisi_id), tfKisiAdi.text, tfKisiTel.text);
              }, child: const Text("GÜNCELLE"))
            ],
          ),
        ),
      ),
    );
  }
}
