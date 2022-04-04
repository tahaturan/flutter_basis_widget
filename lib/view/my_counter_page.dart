import 'package:flutter/material.dart';

class MyCounterApp extends StatefulWidget {
  const MyCounterApp({Key? key}) : super(key: key);

  @override
  State<MyCounterApp> createState() => _MyCounterAppState();
}

class _MyCounterAppState extends State<MyCounterApp> {
  String title = "My Counter";
  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Butona Basilma Miktari",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  sayac.toString(),
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                sayac++;
              });
            },
            child: const Icon(Icons.add),
          )),
    );
  }
}
