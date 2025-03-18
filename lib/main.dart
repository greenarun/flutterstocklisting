import 'package:flutter/material.dart';
import 'pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exinity',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 59, 201, 123)),
        useMaterial3: true,
      ),
      home: const MainPage(title: 'Exinity Stocklisting'),
    );
  }
}


