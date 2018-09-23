library(lpSolveAPI)

# Criando modelo sem restrições com quatro variáveis
modelo.lp <- make.lp(0, 4);

# Da nome ao problema
name.lp(modelo.lp, 'Maximização de lucro');

# Define as características do modelo
lp.control(modelo.lp, sense = 'max');

# Definindo a função objetivo
set.objfn(modelo.lp, c(8, 6, 6, 8));

# Definindo os limites >= 0 para as variáveis do modelo e tendo limite infinito
set.bounds(modelo.lp, lower = c(0, 0, 0, 0), upper = c(Inf, Inf, Inf, Inf));

# Definindo os tipos das variáveis de decisão
set.type(modelo.lp, c(1, 2, 3, 4), type = c('real'));

# Limites
coef1 <- c(1, 2, 3, 1); # Variável 1 * x1 + 2 * x2 + 3 * x3 + x4
coef2 <- c(1, 1, 2, 3); # Variável x1 + x2 + 2* x3 + 3* x4

add.constraint(modelo.lp, coef1, '<=', 15);
add.constraint(modelo.lp, coef2, '<=', 13);

# Visualizando as características do problema e gráfico (Problema Bidimensional)
print(modelo.lp);
plot(modelo.lp);

# Resolvendo
solve(modelo.lp)

print('Valores das variáveis otimizadas');
print(get.variables(modelo.lp));

print('Valor da função objetivo: ');
print(get.objective(modelo.lp));
