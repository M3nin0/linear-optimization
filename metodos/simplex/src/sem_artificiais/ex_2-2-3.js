/*
Exercício (2.2.3) do livro Pesquisa operacional na tomada de decisões.
*/

const glpk = require('../glpk.js');

let lp = {
  name: 'LP',
  objective: {
    direction: glpk.GLP_MAX,
    name: 'obj',
    vars: [
      { name: 'x1', coef: 2.0 },
      { name: 'x2', coef: 6.0 }
    ]
  },
  subjectTo: [
    {
      name: 'cons1',
      vars: [
        { name: 'x1', coef: 4.0 },
        { name: 'x2', coef: 3.0 }
      ],
      bnds: { type: glpk.GLP_UP, ub: 12.0, lb: 0.0 }
    },
    {
      name: 'cons2',
      vars: [
        { name: 'x1', coef: 2.0 },
        { name: 'x2', coef: 1.0 }
      ],
      bnds: { type: glpk.GLP_UP, ub: 8.0, lb: 0.0 }
    }
  ]
};

console.log(glpk.solve(lp));
