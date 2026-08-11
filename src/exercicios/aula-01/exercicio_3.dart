/*
   Código de Referencia para este exercicio:
   https://pt.stackoverflow.com/questions/571532/mapeando-objetos-json-em-flutter
*/

class Usuario {
  int id;
  String nome;
  bool ativo;
  
  Usuario({required this.id,required this.nome, required this.ativo});
  
  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario ( 
      id: json['id'],
      nome: json['nome'],
      ativo: json['ativo']
    );
  }
}

void main() {
  List<Map<String, dynamic>> usuariosJson = [
    {'id': 1, 'nome': 'Alice', 'ativo': true}, 
    {'id': 2, 'nome': 'Bob', 'ativo': false}, 
    {'id': 3, 'nome': 'Carlos', 'ativo': true}
  ];
  
  List<Usuario> usuarios = usuariosJson.map((usuario) => Usuario.fromJson(usuario)).toList();
  
  List<Usuario> ativos = usuarios.where((usuario) => usuario.ativo == true).toList();
  
  print("Usuario Ativos:");
  for (var ativo in ativos) {
    print("Id: ${ativo.id} - Nome: ${ativo.nome}");
  }
  
}
