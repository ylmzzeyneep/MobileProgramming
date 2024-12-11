import 'package:block_pattern_usage/ui/cubit/homapage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bloc Pattern"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<HomePageCubit, int>(
                builder: (context, sonuc) {
                  return Text(
                    sonuc.toString(),
                    style: const TextStyle(fontSize: 50),
                  );
                },
              ),
              TextField(
                controller: tfSayi1,
                decoration: const InputDecoration(hintText: "Sayı 1"),
              ),
              TextField(
                controller: tfSayi2,
                decoration: const InputDecoration(hintText: "Sayı 2"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<HomePageCubit>()
                          .toplamaYap(tfSayi1.text, tfSayi2.text);
                    },
                    child: const Text("Toplama"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<HomePageCubit>()
                          .carpmaYap(tfSayi1.text, tfSayi2.text);
                    },
                    child: const Text("Çarpma"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
