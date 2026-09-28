# Revisão

Revisão para a prova prática que acontecerá no dia 28/09/2026

`Nome`: Lucas Henrique de Oliveira Vieira

## Atividades

#### Exercício 1: Funções e Tipos

Crie uma função chamada `calcularOrcamentoAcabamento` que recebe um `double
metroQuadrado` (obrigatório posicional) e um `double precoPorMetro` (nomeado e
obrigatório com `required`). Retorne o valor total da obra utilizando a sintaxe de Arrow
Function.


#### Exercício 2: Coleções e Controle de Fluxo

Dada uma lista de mapas representando compras da obra (ex: [{&quot;item&quot;: &quot;Tinta
emborrachada&quot;, &quot;valor&quot;: 800}, {&quot;item&quot;: &quot;Conector perfurante&quot;, &quot;valor&quot;: 45}]), escreva um
laço `for-in` que imprima no console apenas os itens com valor acima de R$ 500,00.

#### Exercício 3: Orientação a Objetos

Crie uma classe abstrata `MaterialConstrucao` com um método abstrato `calcularFrete()`.
Crie um mixin `Entregavel` com um método `agendarEntrega(String endereco)`. Por fim,
crie uma classe concreta `PisoPorcelanato` que `extends MaterialConstrucao` e `with
Entregavel`. Instancie a classe e agende a entrega para &quot;Manhuaçu&quot;.

#### Exercício 4: Assincronismo
Crie uma função assíncrona `buscarStatusFinanciamentoCaixa()` que simula uma requisição
demorando 3 segundos usando `Future.delayed` e retorna uma String. A função `main()`
deve chamar essa função usando `await`, imprimindo o resultado, e tratando possíveis erros
com um bloco `try/catch`.