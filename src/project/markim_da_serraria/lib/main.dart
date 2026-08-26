import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MarkinDaSerrariaApp());
}

class MarkinDaSerrariaApp extends StatefulWidget {
  const MarkinDaSerrariaApp({super.key});
  @override
  State<MarkinDaSerrariaApp> createState() => _MarkinDaSerrariaAppState();
}

class _MarkinDaSerrariaAppState extends State<MarkinDaSerrariaApp> {
  ThemeMode _themeMode = ThemeMode.light;
  void _alterarTema() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Markin da Serraria',
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.brown,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.brown,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(
        onThemeChanged: _alterarTema,
        temaEscuro: _themeMode == ThemeMode.dark,
      ),
    );
  }
}
