import 'package:flutter/material.dart';

class ListaScreen extends StatefulWidget {
  @override
  _ListaScreenState createState() => _ListaScreenState();
}

class _ListaScreenState extends State<ListaScreen> {

  // final List<String> _listaStrings = [];

  final List<Map<String, dynamic>> _produtos = [];
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _precoController = TextEditingController();

  void _adicionarProduto() {
    final String nome = _nomeController.text;
    final String precoTexto = _precoController.text;
    final double preco = double.tryParse(precoTexto) ?? 0.0;

    if (nome.isNotEmpty && preco > 0) {
      setState(() {
        // _listaStrings.add(_nomeController.text);
        _produtos.add({
          'nome': nome,
          'preco': preco,
        });
        _nomeController.clear();
        _precoController.clear();
      });
    }
  }

  void _editarPreco(int index) {
    final TextEditingController _novoPrecoController = TextEditingController(text: _produtos[index]['preco'].toString());
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Editar Preço'),
          content: TextField(
            controller: _novoPrecoController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Novo Preço',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                final double novoPreco = double.tryParse(_novoPrecoController.text) ?? 0.0;
                setState(() {
                  _produtos[index]['preco'] = novoPreco;
                });
                Navigator.of(context).pop();
              },
              child: Text('Salvar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }

  void _removerProduto(int index) {
    setState(() {
      _produtos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Produtos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                labelText: 'Nome do Produto',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _precoController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Preço',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _adicionarProduto,
              child: Text('Adicionar Produto'),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _produtos.length,
                itemBuilder: (context, index) {
                  final produto = _produtos[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    elevation: 5,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16.0),
                      title: Text(produto['nome']),
                      subtitle: Text('Preço: R\$${produto['preco'].toStringAsFixed(2)}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit, color: Colors.blue),
                            onPressed: () => _editarPreco(index),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () => _removerProduto(index),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
