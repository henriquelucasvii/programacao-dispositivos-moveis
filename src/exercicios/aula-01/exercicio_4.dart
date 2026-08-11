Future<double> buscarPrecoDolar() async {
  await Future.delayed(Duration(seconds: 3));
  
  return 5.20;
}

void main() async {
  print("Buscando preço... ");

  print("O preço atual é R\$ ${ await buscarPrecoDolar() }");
}