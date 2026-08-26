import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final bool temaEscuro;
  final VoidCallback onThemeChanged;

  const HomeScreen({
    super.key,
    required this.temaEscuro,
    required this.onThemeChanged,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Markin da Serraria",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Controle de Serviços", style: TextStyle(fontSize: 12)),
          ],
        ),
        actions: [
          IconButton(
            tooltip: widget.temaEscuro ? 'Usar tema claro' : 'Usar tema escuro',
            onPressed: widget.onThemeChanged,
            icon: Icon(widget.temaEscuro ? Icons.light_mode : Icons.dark_mode),
          ),
          SizedBox(width: 8),
        ],
      ),
      body: const Center(
        child: Text('Tela Inicial - Projeto Markim da Serraria')
      )
    );
  }
}
