mixin Auditoria {
  
  void registrarAcesso() {
    print("Acesso ${DateTime.now()}");
  }
  
}

class Produto with Auditoria {
  // Atributos Private
  int id;
  String nome;
  double preco;
  String categoria;
  
  Produto(int this.id, String this.nome, double this.preco, String this.categoria);
  
  Produto.promocao(int this.id, String this.nome, double this.preco, String this.categoria) {
    this.preco *= 0.8;
  }
  
  double getAcesso() {
    
    registrarAcesso();
    return this.preco;
  }
}

void main() {
  
  Produto p1 = Produto(50, "Mouse", 500, "Perifericos");
  Produto p2 = Produto.promocao(2, "Mouse", 500, "Perifericos");
  
  print(p1.getAcesso());
  print(p2.getAcesso());
}