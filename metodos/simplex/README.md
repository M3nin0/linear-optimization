# Simplex :rocket:

Este é um método utilizado para a realização de otimizações. A tabela representada abaixo ajuda a entender quando utilizar certos tipos de variáveis.

![Tabela_tipos](./tabela.png)

Os passos descritos aqui, servem como auxílio para os alunos da Maria Suelena, 5° ADS, Fatec SJC, caso contrário pode haver dificuldades no entendimento dos passos. Porém caso queira entender as dicas abaixo, recomenda-se o livro `Pesquisa Operacional na tomada de decisão`.

## Simplex sem variáveis artificiais

Para a realização do simplex sem variáveis artificiais, utilize os seguintes passos:

- 1° - Passe todas as restrições para a forma padrão
  - 1.1 Caso o problema seja de minimização, pode-se multiplicar por `-1` para transformar o problema em um caso de maximização
  - 1.2 Adicione variáveis de folga em todas as equações
- 2° - Criar tabela simplex;
- 3° - Fazer as iterações

## Simplex com variáveis artificiais

- 1° - Passe todas as restrições para a forma padrão
  - 1.1 Caso o problema seja de minimização, pode-se multiplicar por `-1` para transformar o problema em um caso de maximização
  - 1.2 Adicione variáveis de folga em todas as equações (Estas multiplicadas por -1)
  - 1.3 Adicione variáveis artificiais nas linhas que tem restrições `>`
- 2° - Criar tabela simplex;
  - 2.1 Crie uma função artificial, que representa a combinação linear de cada uma das linhas que possui valores artificiais
- 3° - Fazer as iterações

## Primal X Dual

O dual basicamente representa a tabela do primal transposta, assim, basta gerar a tabela de simplex, na forma primal e transportar esta.

## Exercícios :boom:

Os exercícios resolvidos, estão no diretório `src`.

Há também exercícios resolvidos pelo [@kyassunaga](https://github.com/kyassunaga). Todos do livro `Pesquisa Operacional na tomada de decisão`

## Sobre

Estas são anotações que fiz nas aulas, caso não tenha entendido, podemos discutir para melhorar cada um dos passos que descrevi acima :airplane:
