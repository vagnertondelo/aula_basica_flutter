
import 'package:aulabasica/app/screens/home_screen.dart';
import 'package:aulabasica/app/screens/segunda_screen.dart';
import 'package:aulabasica/app/screens/terceira_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/drawer_custom.dart';


class QuartaScreen extends StatefulWidget {

  @override
  State<QuartaScreen> createState() => _QuartaScreenState();
}

class _QuartaScreenState extends State<QuartaScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Quarta Tela'),
      ),
      drawer:
      DrawerCustom(),
      // SingleChildScrollView
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Minha Quarta tela',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Image.asset('assets/dall-e-2.webp'),
            Image.asset('assets/nyan-cat.gif'),
            Image.asset('assets/dall-e-2.webp'),
            Image.asset('assets/nyan-cat.gif'),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}