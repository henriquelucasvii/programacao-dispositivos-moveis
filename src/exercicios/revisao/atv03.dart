abstract class MaterialConstrucao {
  void calcularFrete();
  
}

mixin Entregavel {
  void agendarEntrega(String endereco);
}

class PisoPorcelanato extends MaterialConstrucao with Entregavel {
  @override
  void calcularFrete() {
    print("Frete calculado com sucesso");
  }

  @override
  void agendarEntrega(String endereco) {
    print("Entrega agendada para ${endereco}");
  }
}

void main() {
  PisoPorcelanato pisoPorcelanato = new PisoPorcelanato();

  pisoPorcelanato.agendarEntrega("Manhuaçu");
}
