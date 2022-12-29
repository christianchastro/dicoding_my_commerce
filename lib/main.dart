import 'package:e_commerce/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// * https://www.dicoding.com/blog/menerapkan-animasi-pada-project-flutter/
// * IDEA = https://dribbble.com/shots/20160731-Fashion-eCommerce-App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(),
    );
  }
}
