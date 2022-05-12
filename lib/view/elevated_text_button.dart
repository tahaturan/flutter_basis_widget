import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/view/image_widgets.dart';
import 'package:flutter_temel_widget/view/popup_menu.dart';
import 'package:flutter_temel_widget/widgets/buttons/sayfagecisbutton.dart';

class ElevatedTextButton extends StatefulWidget {
  const ElevatedTextButton({Key? key}) : super(key: key);

  @override
  State<ElevatedTextButton> createState() => _ElevatedTextButtonState();
}

class _ElevatedTextButtonState extends State<ElevatedTextButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elevated text Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                debugPrint("Elevated Button Tiklandi");
              },
              child: const Text(
                "Elevated Button",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, //todo:buton rengini belirleriz
                //onPrimary: Colors.black, //todo: butonun icindeki verilerin rengini degistirir bunu istersek child kisminda text style kullarakda yapabiliriz
                shadowColor: Colors.amber,
                //todo: Golge eklemek icin kullaniriz golge rengini belirleriz
                elevation: 15, //todo: Golge Derinligini belirleriz
                shape: const RoundedRectangleBorder(
                  //todo: Koselerini yuvalattik
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                side: const BorderSide(color: Colors.cyan, width: 3),
                //todo: Cerceve ekledik
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text Button Tiklandi");
              },
              child: const Text(
                "Text Button",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.teal,
                //todo: arkaplan rengini degistiririz
                shadowColor: Colors.blueAccent,
                //todo: Golge Rengini Belirledik
                elevation: 15, //todo: Golge Derinligini Belirledik
                side: const BorderSide(color: Colors.amber, width: 3),
                //todo: Cerceve Ekledik
              ),
            ),
            GecisButton(sayfa: const ImageExample())
          ],
        ),
      ),
    );
  }
}
