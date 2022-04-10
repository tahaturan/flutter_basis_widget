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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textfieldController,
              //todo: olustudumuz degiskeni burada tanimliyoruz bu sekilde verileri alabilicez
              decoration: const InputDecoration(
                hintText: "Yaziniz",
                hintStyle: TextStyle(
                  //todo: input icindeki yaziyi ozellestirdik
                  color: Colors.blueAccent,
                  fontSize: 20,
                ),
                labelText: "e-mail",
                labelStyle: TextStyle(color: Colors.red, fontSize: 20),
                filled: true,
                //todo:arka plan rengini degistircegimiz icin true yaptik
                fillColor: Colors.green,
                //todo: arka plan rengini degistirdik
                border: OutlineInputBorder(
                    //todo:cerceve ekledik
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                icon: Icon(Icons.print), //todo: dis yan tarafina icon ekledik
                prefixIcon: Icon(
                  //todo: icine bir icon ekledik
                  Icons.abc,
                  color: Colors.white,
                ),
              ),
              obscureText: true,
              //todo: sifre girer gibi karakterleri gizler
              keyboardType: TextInputType.datetime,
              //todo: klavyenin acilis turunu belirtiriz
              textAlign: TextAlign.center,
              //todo: icindeki yaziyi hizalariz
              maxLength: 10,
              //todo: icerisine girilcek karakter sayisini belirleriz
              style: const TextStyle(color: Colors.white),
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
            style: ElevatedButton.styleFrom(
              primary: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              side: const BorderSide(color: Colors.red, width: 2),
            ),
          ),
          Text(
            "Gelen Veri: $alinanVeri",
            style: const TextStyle(
              color: Colors.green,
              backgroundColor: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          //todo: Vermizi Ekranda gosteriyoruz
        ],
      ),
    );
  }
}
