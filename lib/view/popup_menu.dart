import 'package:flutter/material.dart';

class PopupMenuKullanimi extends StatefulWidget {
  const PopupMenuKullanimi({Key? key}) : super(key: key);

  @override
  State<PopupMenuKullanimi> createState() => _PopupMenuKullanimiState();
}

class _PopupMenuKullanimiState extends State<PopupMenuKullanimi> {
  String secilenSehir = "";
  List<String> tumSehirler = [
    "Ankara",
    "Istanbul",
    "Aydin",
    "Izmir",
    "Erzurum"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        // itemBuilder: ((BuildContext context) => <PopupMenuEntry<String>>[
        //       const PopupMenuItem(child: Text("Ankara"), value: "ankara"),
        //       const PopupMenuItem(child: Text("Aydin"), value: "aydin"),
        //       const PopupMenuItem(child: Text("Izmir"), value: "izmir"),
        //       const PopupMenuItem(child: Text("Erzurum"), value: "erzurum"),
        //     ]),
        itemBuilder: (BuildContext context) {
          return tumSehirler
              .map(
                (String sehir) => PopupMenuItem(
                  child: Text(sehir),
                  value: sehir,
                ),
              )
              .toList();
        },
        onSelected: (String sehir) {
          secilenSehir = sehir;
          debugPrint("Secilen Sehir $sehir");
          //* istersek secilen sehri bi degisken icinde tutariz yada sayfa gecisi yapicaksak da o islemleri burada yapariz genelde appBar da kullanilir burasi
        },
        icon: const Icon(Icons.arrow_drop_down_circle_rounded),
        //todo: iconunu degistebiliriz
      ),
    );
  }
}
