import 'package:flutter/material.dart';

class TextButtonTextField extends StatefulWidget {
  const TextButtonTextField({Key? key}) : super(key: key);

  @override
  State<TextButtonTextField> createState() => _TextButtonTextFieldState();
}

class _TextButtonTextFieldState extends State<TextButtonTextField> {
  var textfieldController = TextEditingController();
  //todo: ilk olarak textfield de girdimiz veriyi tutacak bir nesne olustuyoruz controller kismina eklemek icin
  String alinanVeri = "";
  //todo: alinanVeri diye bir degisken olusturup gelen verimizi Stringe donusturup bu degiskenin icinde tutucaz ve ekrana yazicaz
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: textfieldController,
            //todo: olustudumuz degiskeni burada tanimliyoruz bu sekilde verileri alabilicez
            decoration: const InputDecoration(
              hintText: "Yaziniz",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                alinanVeri = textfieldController.text;
                //todo: burada textfieldController.text diyerek verimizi Stringe cevirip degiskenimize esitliyoruz
                //* setState kullandik cunku buildin tetiklenmesini istiyoruz bastigimizda ekranda gorunsun yani
              });
            },
            child: const Text("Veriyi Al"),
          ),
          Text("Gelen Veri: $alinanVeri"),
          //todo: Vermizi Ekranda gosteriyoruz
        ],
      ),
    );
  }
}
