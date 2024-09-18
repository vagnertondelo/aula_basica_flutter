import 'package:aulabasica/app/screens/formulario_screen.dart';
import 'package:flutter/material.dart';

import 'app/screens/home_screen.dart';
import 'app/screens/lista_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FormularioScreen(),
    );
  }
}

