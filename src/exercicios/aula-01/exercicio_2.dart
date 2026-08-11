mixin Auditoria {
  
  void registrarAcesso() {
    print("Acesso ${DateTime.now()}");
  }
  
}

class Produto with Auditoria {
  // Atributos Private
  int _id;
  String _nome;
  double _preco;
  String _categoria;
  
  Produto(int this._id, String this._nome, double this._preco, String this._categoria);
  
  Produto.promocao(int this._id, String this._nome, double this._preco, String this._categoria) {
    this._preco *= 0.8;
  }
  
  double getAcesso() {
    
    registrarAcesso();
    return this._preco;
  }
}

void main() {
  
  Produto p1 = Produto(50, "Mouse", 500, "Perifericos");
  Produto p2 = Produto.promocao(2, "Mouse", 500, "Perifericos");
  
  print(p1.getAcesso());
  print(p2.getAcesso());
}