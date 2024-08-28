import 'package:aulabasica/app/components/drawer_custom.dart';
import 'package:aulabasica/app/screens/quarta_screen.dart';

import 'package:aulabasica/app/screens/terceira_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller1 = TextEditingController();
  int _counter = 0;
  double _resultado=0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _somar() {
    setState(() {
      double num1 = double.tryParse(_controller1.text) ?? 0.0;
      _resultado = (num1 + 2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: DrawerCustom(),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.red, // Altere a cor aqui
                    ),
                    backgroundColor: Colors.amberAccent,
                  ),
                  onPressed: () {
                    _incrementCounter();
                  },
                  child: const Text('Diminuir'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.red, // Altere a cor aqui
                    ),
                    backgroundColor: Colors.amberAccent,
                  ),
                  onPressed: () {
                    _incrementCounter();
                  },
                  child: const Text('Aumentar'),
                ),

              ],
            ),
            TextField(
              controller: _controller1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 1'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.red, // Altere a cor aqui
                ),
                backgroundColor: Colors.amberAccent,
              ),
              onPressed: (){
                _somar();
              }, // Chama a função passada como parâmetro
              child: Text("+"), // Usa o valor do operador
            ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     textStyle: const TextStyle(
            //       fontSize: 20,
            //       color: Colors.red, // Altere a cor aqui
            //     ),
            //     backgroundColor: Colors.amberAccent,
            //   ),
            //   onPressed: () {
            //     _somar();
            //   },
            //   child: const Text('+'),
            // ),
            Text(
              '$_resultado',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
