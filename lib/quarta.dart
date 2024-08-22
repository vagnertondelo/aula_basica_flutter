import 'package:aulabasica/segunda.dart';
import 'package:aulabasica/terceira.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class QuartaPage extends StatefulWidget {

  @override
  State<QuartaPage> createState() => _QuartaPageState();
}

class _QuartaPageState extends State<QuartaPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Quarta Tela'),
      ),
      drawer:
      Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Handle item 1 tap
                // Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      MyHomePage(title: "Minha HOME")),
                );
              },
            ),
            ListTile(
              title: Text('Segunda'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaPage()),
                );


              },
            ),

            ListTile(
              title: Text('Terceira'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TerceiraPage()),
                );
              },
            ),

            ListTile(
              title: Text('Quarta'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuartaPage()),
                );
              },
            ),
          ],
        ),
      ),
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