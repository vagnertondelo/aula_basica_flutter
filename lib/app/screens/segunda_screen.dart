import 'package:aulabasica/app/screens/quarta_screen.dart';

import 'package:aulabasica/app/screens/terceira_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/drawer_custom.dart';
import 'home_screen.dart';

class SegundaScreen extends StatefulWidget {

  @override
  State<SegundaScreen> createState() => _SegundaScreenState();
}

class _SegundaScreenState extends State<SegundaScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Segunda Tela'),
      ),
      drawer:
      DrawerCustom(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Text(
              'Minha segunda tela',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
