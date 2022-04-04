import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/view/basic_buttons.dart';

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
          title: const Text("Buton Ornekleri"),
        ),
        body: BasicButtons(),
      ),
    );
  }
}
