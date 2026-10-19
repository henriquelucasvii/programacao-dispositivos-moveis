import 'package:aula_05_10/produto.dart';
import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {
  final Produto produto;

  const SegundaTela({super.key, required this.produto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(produto.descricao)),
      body: Center(
        child: Text(produto.preco.toString())
        ),
    );
  }
}
