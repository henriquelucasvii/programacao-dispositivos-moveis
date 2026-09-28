void main() {
  print(calcularOrcamentoAcabamento(6, precoPorMetro: 6));
}

double calcularOrcamentoAcabamento(
  double metroQuadrado, {
  required double precoPorMetro,
}) => metroQuadrado * precoPorMetro;
