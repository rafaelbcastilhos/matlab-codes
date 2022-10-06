function retval = newton_func (x, f, df)
  % Implementacao do método de Newton para encontrar um zero para a funcao f.
  % x indica a aproximação inicial para o zero.
  % df indica a função que computa a derivada de f(x).
  % A função deve retornar uma raiz da equação f(x) = 0.
  x1 = x - (f(x) / df(x));

  while abs(f(x1)) > 1e-7
    x = x1;
    x1 = x1 - (f(x1) / df(x1));
  end
  retval = x1;
endfunction
