import 'dart:convert';

import 'package:aulabasica/app/models/usuario_model.dart';
import 'package:flutter/material.dart';

import '../components/ElevateButtonComponent.dart';
import '../components/drawer_custom.dart';

class FormularioScreen extends StatefulWidget {
  @override
  _FormularioScreenState createState() => _FormularioScreenState();
}
class _FormularioScreenState extends State<FormularioScreen> {
 // Chave para o formulario
  final _formKey = GlobalKey<FormState>();

  // Controladores para os campos de entrada
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _idadeController = TextEditingController();

  //Variavel para armazenar o JSON gerado
  String _jsonOutput='';

  void _gerarJson(){
    if(_formKey.currentState?.validate() ?? false){
      final usuario = UsuarioModel(
          nome: _nomeController.text,
          email: _emailController.text,
          idade: _idadeController.text
      );
      setState(() {
        _jsonOutput = jsonEncode(usuario.toJson());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario'),
      ),
      drawer: DrawerCustom(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nomeController,
                          decoration: InputDecoration(
                              labelText: 'Nome',
                              border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return 'Por favor, insira seu nome';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height:10),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder()
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return 'Por favor, insira seu email';
                            }
                            else if(
                            !RegExp('^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]').hasMatch(value)){
                              return 'email invalido';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height:10),
                        TextFormField(
                          controller: _idadeController,
                          decoration: InputDecoration(
                              labelText: 'Idade',
                              border: OutlineInputBorder()
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return 'Por favor, insira sua idade';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20,),
                        ElevateButtonComponent(
                            label: 'Enviar',
                            onPressedParam: _gerarJson,
                          backgroundColorParam: Colors.blue,
                        ),

                      ],
                    )
                ),
            SizedBox(height: 20,),
            Text(_jsonOutput)
          ],
        ),
      ),
    );
  }
}
