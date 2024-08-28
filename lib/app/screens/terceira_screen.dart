
import 'package:aulabasica/app/screens/quarta_screen.dart';
import 'package:aulabasica/app/screens/segunda_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../components/drawer_custom.dart';
import 'home_screen.dart';

class TerceiraScreen extends StatefulWidget {

  @override
  State<TerceiraScreen> createState() => _TerceiraScreenState();
}

class _TerceiraScreenState extends State<TerceiraScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Terceira Tela'),
      ),
      drawer:
      DrawerCustom(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Minha Terceira tela',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}