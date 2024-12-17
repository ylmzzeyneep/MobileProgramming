import 'package:contacts_app_dio/data/entity/kisiler.dart';
import 'package:contacts_app_dio/ui/cubit/homapage_cubit.dart';
import 'package:contacts_app_dio/ui/views/detailpage.dart';
import 'package:contacts_app_dio/ui/views/registrationpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool aramaYapiliyorMu = false;

  @override
  void initState() {
    super.initState();
    context.read<HomePageCubit>().kisileriYukle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu
            ? TextField(
          decoration: const InputDecoration(hintText: "Ara"),
          onChanged: (aramaSonucu) {
            context.read<HomePageCubit>().ara(aramaSonucu);
          },
        )
            : const Text("Kisiler"),
        actions: [
          aramaYapiliyorMu
              ? IconButton(
            onPressed: () {
              setState(() {
                aramaYapiliyorMu = false;
              });
              context.read<HomePageCubit>().kisileriYukle();
            },
            icon: const Icon(Icons.clear),
          )
              : IconButton(
            onPressed: () {
              setState(() {
                aramaYapiliyorMu = true;
              });
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: BlocBuilder<HomePageCubit, List<Kisiler>>(
        builder: (context, kisilerListesi) {
          if (kisilerListesi.isNotEmpty) {
            return ListView.builder(
              itemCount: kisilerListesi.length,
              itemBuilder: (context, indeks) {
                var kisi = kisilerListesi[indeks];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage(kisi: kisi)),
                    ).then((value) {
                      context.read<HomePageCubit>().kisileriYukle();
                    });
                  },
                  child: Card(
                    child: SizedBox(
                      height: 100,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  kisi.kisi_ad,
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  kisi.kisi_tel,
                                  style: const TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("${kisi.kisi_ad} silinsin mi?"),
                                  action: SnackBarAction(
                                    label: "Evet",
                                    onPressed: () {
                                      context.read<HomePageCubit>().sil(int.parse(kisi.kisi_id));
                                    },
                                  ),
                                ),
                              );
                            },
                            icon: const Icon(Icons.clear, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: Text(
                "Kayıtlı kişi bulunamadı.",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RegistrationPage()),
          ).then((value) {
            context.read<HomePageCubit>().kisileriYukle();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
