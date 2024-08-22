import 'package:aulabasica/quarta.dart';
import 'package:aulabasica/terceira.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class SegundaPage extends StatefulWidget {

  @override
  State<SegundaPage> createState() => _SegundaPageState();
}

class _SegundaPageState extends State<SegundaPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Segunda Tela'),
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
