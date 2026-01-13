import 'package:album_coletor_ui/pages/home_page.dart';
import 'package:album_coletor_ui/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abum Collector',
      theme: theme,
      home: const MyHomePage(title: 'Abum Collector Home Page'),
    );
  }
}
