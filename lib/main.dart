import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/view/elevated_text_button.dart';
import 'package:flutter_temel_widget/view/popup_menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        textTheme: TextTheme(
          headline2: TextStyle(
            color: Colors.green.shade400,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Elevated & Text Button Kullanimi"),
          actions: const [PopupMenuKullanimi()],
        ),
        body: const ElevatedTextButton(),
      ),
    );
  }
}
