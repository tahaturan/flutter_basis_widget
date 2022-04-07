import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({Key? key}) : super(key: key);

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir; //? burayi null tanimladik
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: const Text(
            "Sehir Seciniz"), //todo: yukarida secilen sehiri null tanimladik ve ekranda ilk olarak bu yazinin gorunmesini istiyoruz
        items: const [
          DropdownMenuItem(
            child: Text("Ankara Sehri"),
            value: "ankara",
          ),
          DropdownMenuItem(
            child: Text("Bursa Sehri"),
            value: "izmir",
          ),
          DropdownMenuItem(
            child: Text("Aydin Sehri"),
            value: "aydin",
          ),
        ],
        value: _secilenSehir,
        onChanged: (String? yeni) {
          //todo: secme islemlerimizi yaptigimiz yer
          setState(() {
            _secilenSehir = yeni!;
          });
        },
        icon: const Icon(Icons.arrow_downward),
        //todo: yandaki ikonu degistidik
        iconSize: 32, //todo: ikon boyutunu belirledik
        style: const TextStyle(color: Colors.blueAccent),
        //todo: yazilarin rengini degistidik
        underline: Container(
          //todo: altindaki cigiziyi duzenledik illa continer koymamiza gerek yok!!
          height: 3,
          color: Colors.red,
        ),
      ),
    );
  }
}
