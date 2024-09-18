import 'package:aulabasica/app/screens/formulario_screen.dart';
import 'package:aulabasica/app/screens/lista_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/quarta_screen.dart';
import '../screens/terceira_screen.dart';

class DrawerCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
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
                      HomeScreen(title: "Minha HOME")),
                );
              },
            ),
            ListTile(
              title: Text('Segunda'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen(title: "HOME")),
                );
              },
            ),

            ListTile(
              title: Text('Terceira'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TerceiraScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Quarta'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      QuartaScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Lista'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      ListaScreen()),
                );
              },
            ),

            ListTile(
              title: Text('Formulario'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      FormularioScreen()),
                );
              },
            ),
          ],
        ),
      );
  }
}