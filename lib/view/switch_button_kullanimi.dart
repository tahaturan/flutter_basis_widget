import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/view/elevated_text_button.dart';
import 'package:flutter_temel_widget/widgets/buttons/sayfagecisbutton.dart';

class SwitchButtonKullanimi extends StatefulWidget {
  const SwitchButtonKullanimi({Key? key}) : super(key: key);

  @override
  State<SwitchButtonKullanimi> createState() => _SwitchButtonKullanimiState();
}

class _SwitchButtonKullanimiState extends State<SwitchButtonKullanimi> {
  bool switchKontrol = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Button Kullanimi"),
      ),
      body: Center(
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
            GecisButton(sayfa: const ElevatedTextButton())
          ],
        ),
      ),
    );
  }
}
