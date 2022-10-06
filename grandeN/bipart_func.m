function retval = bipart_func (a, b, f)
  % Implementacao do método da biparticao para encontrar um zero para a funcao f.
  % [a, b] indica o intervalo considerado.
  % Implemente o método dando prioridade ao intervalo mais à esquerda sempre que possível.
  % A função deve retornar uma raiz da equação f(x) = 0.
  x = (a + b) / 2;
  while abs(f(x)) > 1e-7
    if f(a) * f(x) < 0
      b = x;
    else
      a = x;
    end
    x = (a + b) / 2;
 end
 retval = x;
endfunction
