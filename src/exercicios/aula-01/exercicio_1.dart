String formatarContato(String nome, [String? telefone, String? email]) {
  String cartaoDeVisitas = "Cartão de Visitas - Nome: $nome";
  cartaoDeVisitas += " - Telefone: ${telefone ?? "Não informado"}";

  if (email == null) {
    return cartaoDeVisitas;
  }

  return cartaoDeVisitas + " - Email: $email";
}

void main() {
  print(formatarContato("Lucas"));
  print(formatarContato("Lucas", "31984408945"));
  print(formatarContato("Lucas", "31984408945", "lucas@gmail.com"));
}
