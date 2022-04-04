import 'package:flutter/material.dart';

class BasicButtons extends StatelessWidget {
  const BasicButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: //todo: basildigi zaman yapmasini istediklerimizi yazariz
              () {},
          onLongPress: () {
            //todo: uzun basildigi zaman yapilacak islemler
            debugPrint("Butona uzun basildi");
          },
          child: //todo: child kismina ise icinde ne olacak onu yazariz img de olablir
              const Text("Text Button"),
        ),
        TextButton.icon(
          //todo: basina icon ekleyerek text buton olusturmamizi saglar
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),
          ),
          icon: const Icon(Icons.ac_unit), // todo: iconu ekleriz
          label: const Text(
              "Text Button with icon"), //todo: label kisminada icerisinde ne olacak onu ekleriz
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
            onPrimary: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            side: const BorderSide(width: 4, color: Colors.amber),
          ),
          child: const Text("Elevated Button"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            side: const BorderSide(
              color: Colors.amber,
              width: 2,
            ),
            primary: Colors.white,
            onPrimary: Colors.black,
          ),
          icon: const Icon(Icons.access_alarm),
          label: const Text("Elevated Button with icon"),
        ),
      ],
    );
  }
}
