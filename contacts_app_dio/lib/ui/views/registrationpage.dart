import 'package:contacts_app_dio/ui/cubit/registrationpage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kayıt Sayfa"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            children: [
              TextField(controller: tfKisiAdi, decoration: const InputDecoration(hintText: "Kişi Adı"),),
              TextField(controller: tfKisiTel, decoration: const InputDecoration(hintText: "Kişi Adı"),),
              ElevatedButton(onPressed: (){
                context.read<RegistrationPageCubit>().kaydet(tfKisiAdi.text, tfKisiTel.text);
              }, child: const Text("KAYDET"))
            ],
          ),
        ),
      ),
    );
  }
}
