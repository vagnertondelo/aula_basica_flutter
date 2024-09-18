class UsuarioModel{
    final String nome;
    final String email;
    final String idade;


    UsuarioModel({
    required this.nome,
    required this.email,
    required this.idade,
    });

    // Converte um objeto UsuarioModel em um map
    Map<String, dynamic> toJson(){
      return{
        'nome':nome,
        'email': email,
        'idade': idade
      };
    }


}