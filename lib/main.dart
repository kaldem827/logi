import 'package:flutter/material.dart';
import 'package:logi/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .light(),

        // text
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
