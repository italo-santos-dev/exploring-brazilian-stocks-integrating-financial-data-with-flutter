<p align="right">
  <a href="README.pt.md">BR</a> - <a href="README.md">US</a>
</p>

# Aplicativo de Listagem de Ações

Este é um exemplo de um aplicativo Flutter que lista informações de ações obtidas de uma API pública. O aplicativo exibe o símbolo da ação, o setor ao qual pertence e o preço mais recente.

## Como Funciona

1. **Importação de Pacotes**: O código começa importando os pacotes necessários para o Flutter, incluindo o pacote `http` para fazer requisições HTTP e o pacote `dart:convert` para manipulação de dados JSON.

2. **Classe Principal (`MyApp`)**: A classe `MyApp` é o ponto de entrada do aplicativo. Ela retorna uma instância de `MaterialApp`, que é a raiz da interface do usuário do Flutter.

3. **Página de Listagem de Ações (`StockListPage`)**: Esta é a página principal do aplicativo, que estende `StatefulWidget` para permitir atualizações dinâmicas de estado. Ela contém uma lista de ações.

4. **Estado da Página de Listagem de Ações (`_StockListPageState`)**: Esta classe gerencia o estado da página de listagem de ações. Ela inicializa uma lista vazia de ações e faz uma requisição HTTP para uma API pública no método `initState()`.

5. **Método de Busca de Ações (`fetchStock`)**: Este método usa o pacote `http` para fazer uma requisição GET para a URL da API de ações. Se a resposta for bem-sucedida (código de status 200), os dados JSON são decodificados e a lista de ações é atualizada no estado. Caso contrário, uma exceção é lançada.

6. **Construção da UI (`build`)**: O método `build` constrói a interface do usuário da página de listagem de ações. Ele exibe um `AppBar` com o título "Ações" e um `ListView.builder` que exibe cada ação como um `ListTile`.

7. **Listagem de Ações (`ListView.builder`)**: Esta é uma lista rolável de ações, onde cada ação é exibida como um `ListTile` contendo o símbolo da ação, o setor e o preço mais recente.

## Como Usar

1. Clone ou baixe este repositório.
2. Certifique-se de ter o Flutter instalado e configurado em seu ambiente de desenvolvimento.
3. Execute o aplicativo em um dispositivo ou emulador.

## Requisitos

- Flutter SDK
- Conexão com a internet para buscar dados de ações

## Observação

Este aplicativo usa uma API pública para buscar dados de ações. Certifique-se de seguir os termos de uso da API e considere possíveis limitações de uso.
