import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tfController = TextEditingController();
  String alinanVeri = "";
  bool switchKontrol = false;
  bool checkboxKontrol = false;
  var ulkelerListesi = <String>[];
  String secilenUlke= "Türkiye";

  @override
  void initState(){
    super.initState();
    ulkelerListesi.add("Türkiye");
    ulkelerListesi.add("İtalya");
    ulkelerListesi.add("Japonya");
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Widgets"),),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(alinanVeri),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: tfController,
                  decoration: const InputDecoration(hintText: "Veri"),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  alinanVeri = tfController.text;
                });
              }, child: const Text("Veriyi Al")
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 200,
                    child: SwitchListTile(
                      title: const Text("Dart"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: switchKontrol,
                        onChanged: (veri){
                          setState(() {
                            switchKontrol = veri;
                          });
                        }),
                  ),
                  SizedBox(width: 200,
                    child: CheckboxListTile(
                        title: const Text("Flutter"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: checkboxKontrol,
                      onChanged: (veri){
                        setState(() {
                          checkboxKontrol = veri!;
                        });
                      }),
                  ),
              ],
              ),
              DropdownButton<String>(
                value: secilenUlke,
                icon: const Icon(Icons.arrow_drop_down),
                items: ulkelerListesi.map((ulke) {
                  return DropdownMenuItem<String>(
                    value: ulke,
                    child: Text(ulke),
                  );
                }).toList(),
                onChanged: (veri){
                  setState(() {
                    secilenUlke = veri!;
                  });
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
