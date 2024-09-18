class Produto{
  final String nome;
  double preco;

  Produto({required this.nome, required this.preco});

  // Metodo para criar um produto a partir de um Map
  factory Produto.fromMap(Map<String,dynamic> map){
    return Produto(
        nome: map['nome'],
        preco: map['preco']);
  }
}