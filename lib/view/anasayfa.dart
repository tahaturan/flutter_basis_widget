import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/view/switch_button_kullanimi.dart';
import 'package:flutter_temel_widget/widgets/buttons/sayfagecisbutton.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("ANASAYFA"),
          GecisButton(sayfa: const SwitchButtonKullanimi())
        ],
      ),
    );
  }
}
