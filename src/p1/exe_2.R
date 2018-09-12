# Obter graficamente a solução do problema.

library(lpSolveAPI)

# Criando modelo sem restrições com duas variáveis
modelo.lp <- make.lp(0, 2);

# Dando nome ao problema
name.lp(modelo.lp, 'Minimização do W');

# Define as características do modelo 
lp.control(modelo.lp, sense = 'min');

# Definindo função objetivo
set.objfn(modelo.lp, c(0.4, 0.5));

# Definindo as restrições de não negatividade
set.bounds(modelo.lp, lower = c(0, 0), upper = c(Inf, Inf));

# Definindo as variáveis de decisão
set.type(modelo.lp, c(1, 2), type = c('real'));

# Definindo restrições
rest_1 <- c(0.6, 0.4); # >= 6
rest_2 <- c(0.5, 0.5); # <= 6
rest_3 <- c(0.3, 0.1); # <= 2.7

add.constraint(modelo.lp, rest_1, '>=', 6);
add.constraint(modelo.lp, rest_2, '<=', 6);
add.constraint(modelo.lp, rest_3, '<=', 2.7);

# Características gráficas do modelo
plot(modelo.lp);
print(modelo.lp);

# Resolvendo
solve(modelo.lp);

print('Valores das variáveis otimizadas');
print(get.variables(modelo.lp));

print('Valor da função objetivo: ');
print(get.objective(modelo.lp));

