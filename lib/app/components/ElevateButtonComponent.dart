import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevateButtonComponent extends StatelessWidget{
  // Texto do botão
  final String label;
  // Função que vai ser chamada no clique do botão
  final VoidCallback onPressedParam;
  // Cor do texto do botão
  final Color textColor;
  //Cor de fundo do nosso botão
  final Color backgroundColorParam;

  // Construtor que recebe os atributos do botão
  ElevateButtonComponent({
    required this.label,
    required this.onPressedParam,
    this.textColor = Colors.amberAccent,
    this.backgroundColorParam = Colors.black,
  });

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            // personaliza o texto do botão
            fontSize: 20,
            color: textColor
          ),
        //muda a cor de fundo do botão
        backgroundColor: backgroundColorParam,
      ),
        onPressed: onPressedParam,
        child: Text(label),
    );
  }

}