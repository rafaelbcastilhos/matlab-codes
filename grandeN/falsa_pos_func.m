function retval = falsa_pos_func (a, b, f)
  % Implementacao do método da falsa-posição para encontrar um zero para a funcao f.
  % [a, b] indica o intervalo considerado.
  % Implemente o método dando prioridade ao intervalo mais à esquerda sempre que possível.
  % A função deve retornar uma raiz da equação f(x) = 0.
  x = a - f(a) * (b - a) / (f(b) - f(a));
  while abs(f(x)) > 1e-7
    if f(a) * f(x) <= 0
      b = x;
    else
      a = x;
    end
    x = a - f(a) * (b - a) / (f(b) - f(a));
  end
  retval = x;
endfunction
