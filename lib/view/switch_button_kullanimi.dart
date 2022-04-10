import 'package:flutter/material.dart';

class SwitchButtonKullanimi extends StatefulWidget {
  const SwitchButtonKullanimi({Key? key}) : super(key: key);

  @override
  State<SwitchButtonKullanimi> createState() => _SwitchButtonKullanimiState();
}

class _SwitchButtonKullanimiState extends State<SwitchButtonKullanimi> {
  bool switchKontrol = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(
            value: switchKontrol,
            onChanged: (veri) {
              setState(() {
                switchKontrol = veri;
              });
              debugPrint("Switch : $veri");
            },
            activeTrackColor: Colors.lightGreenAccent,
            activeColor: Colors.green,
            inactiveTrackColor: Colors.red,
            inactiveThumbColor: Colors.grey,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (switchKontrol) {
                  switchKontrol = false;
                } else {
                  switchKontrol = true;
                }
              });
            },
            child: const Text("Anlik Durum"),
          ),
        ],
      ),
    );
  }
}
