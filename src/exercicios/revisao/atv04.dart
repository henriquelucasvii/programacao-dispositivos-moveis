Future<String> buscarStatusFinanciamentoCaixa() async {
  await Future.delayed(Duration(seconds: 3));

  return "Transação realizada";
}

void main() async {
  try {
    print(await buscarStatusFinanciamentoCaixa());
  } catch (error) {
    throw Exception("Não foi possível concluir a transação: $error");
  }
}
