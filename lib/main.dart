import 'package:flutter/material.dart';
import 'package:exercice/page_bienvenue.dart';

const c_blue = Color.fromARGB(0, 65, 65, 234);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App connexion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageBienvenue(),
    );
  }
}
