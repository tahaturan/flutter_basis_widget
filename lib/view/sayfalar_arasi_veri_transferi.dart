import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/kisiler.dart';

// ignore: must_be_immutable
class SayfalarArasiVeriTransferi extends StatefulWidget {
  Kisiler kisi;

  SayfalarArasiVeriTransferi({Key? key, required this.kisi}) : super(key: key);

  @override
  _SayfalarArasiVeriTransferiState createState() =>
      _SayfalarArasiVeriTransferiState();
}

class _SayfalarArasiVeriTransferiState
    extends State<SayfalarArasiVeriTransferi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Veri Transferi'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " Isim: ${widget.kisi.isim}\n Yas: ${widget.kisi.yas}\n Boy: ${widget.kisi.boy}\n Bekar Mi: ${widget.kisi.bekarMi}",
              style: const TextStyle(color: Colors.blueAccent, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
