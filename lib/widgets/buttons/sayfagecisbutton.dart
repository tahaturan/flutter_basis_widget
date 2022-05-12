import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/view/anasayfa.dart';

class GecisButton extends StatefulWidget {
  Widget sayfa;

  GecisButton({Key? key, required this.sayfa}) : super(key: key);

  @override
  State<GecisButton> createState() => _GecisButtonState();
}

class _GecisButtonState extends State<GecisButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widget.sayfa,
            ));
      },
      child: const Icon(Icons.arrow_circle_right),
    );
  }
}
