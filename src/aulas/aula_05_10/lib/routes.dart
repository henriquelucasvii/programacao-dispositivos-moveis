
import 'package:aula_05_10/main.dart';
import 'package:aula_05_10/produto.dart';
import 'package:aula_05_10/segunda_tela.dart';
import 'package:go_router/go_router.dart';

final Produto produto = Produto("Novo Produto", 10);

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage(),
    ),
    GoRoute(
      path: '/segunda-tela',
      builder: (context, state) => SegundaTela(
        produto: state.extra as Produto,
      ),
    ),
  ],
);
