Feature : Jogos do Time

  //As a user of the system
  I want to see the box score of the games that my team played, so i can compare the
  player's statistics throught the season so that i can update the contracts of those
  players

#Controller tests

  Scenario: Novo Jogo
    Given que o sistema não possua nenhum jogo no dia "22/05/16"
    When eu crio um jogo "22/05/16" com mandante "Nautico", Visitante "Sport" e placar "1x0"
    Then o jogo "22/05/16" é arquivado com sucesso no systema

  Scenario: Jogo no mesmo dia
    Given que o sistema possui um jogo com data "22/05/16" com arquivo "220516Game.doc"
    When eu crio um jogo "22/05/16" com mandante "Nautico", Visitante "Sport" e placar "1x0"
    Then o jogo "22/05/16" não é salvo pelo systema pois já existe um jogo com a mesma data

  Scenario: Remover Jogo
    Given que o sistema possui um jogo com data "22/05/16" com arquivo "220516Game.doc"
    When eu removo o jogo"22/05/16"
    Then o jogo "22/05/16" não está salvo no sistema

  Scenario: Remover Jogo não Existente
    Given que o sistema não possua nenhum jogo no dia "22/05/16"
    When eu removo o jogo "22/05/16"
    Then o sistema informa que não existe o jogo "22/05/16" no sistema

#GUI Tests

  Scenario: Editar Jogo
    Given que o sistema possui um jogo com data "22/05/16" com arquivo "220516Game.doc"
    When eu escolho a opção "Editar" no menu de opções de jogo
    And eu escolho o jogo "22/05/16" na lista de jogos disponiveis
    Then eu edito o jogo "22/05/16" e as alterações são salvas pelo sistema

  Scenario: Ver jogo passado
    Given eu estou no menu de jogos do time
    When eu escolho o jogo "22/05/16" na lista de jogos existentes
    Then o sistema mostra as informações sobre o jogo "22/05/16"

  Scenario: Ver jogadores titulares e substituidos em um jogo
    Given eu estou no menu dos jogos do time
    When eu escolho o jogo "22/05/16" na lista de jogos disponiveis
    And eu escolho a aba "Escalação" no menu de opções do jogo
    Then o sistema mostra os jogadores que foram titulares na partida e jogadores que    entraram por meio de substituições

  Scenario: Ver gols de um jogo
    Given eu estou no menu de jogos do time
    When eu escolho o jogo "22/05/16" na lista de jogos disponiveis
    And eu escolho a aba "Gols da Partida" no menu de opções do jogo
    Then o sistema mostra quais jogadores marcaram gols na partida

  Scenarios: Ver jogadores relacionados para um jogo
    Given eu estou no menu de jogos disponiveis
    When eu escolho o jogo "22/05/16" na lista de jogos disponiveis
    And eu escolho a aba "Relacionados" no menu de opções de jogo
    Then o sistema mostra quais jogadores foram relacionados para a partida