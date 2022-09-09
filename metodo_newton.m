function [x,iter] = metodo_newton(x0,q,funF,funJ,data)

N = 100;  % numero de iteracoes maximo
epsilon = 1e-4;
valormax = 1e+4;

while N>0
    
 % Passo 01
 F = feval(funF,x0,q,data);
 J = feval(funJ,x0,q,data);
 
 % Passo 02
 if max(abs(F)) < epsilon
   x = x0;
   iter = 100 - N;
   return
 end
 
 % Teste de divergencia
 if max(abs(F)) > valormax
   x = Inf;
   iter = 100 - N;
   disp('Solucao diverge')
   return
 end
 
 % Passo 03
 if abs(det(J))<epsilon
   x = NaN;
   iter = 100 - N;
   disp('Jacobiana esta proxima de zero - tente outro x0')
   return
 end
 
 x1 = x0 - inv(J)*F;
 
 % Passo 04
 if max(abs(x1-x0)) < epsilon
   x = x1;
   iter = 100 - N;
   return
 end
 
 % Passo 05
  x0 = x1;  
    
 N = N-1;   
end

disp('Metodo nao converge')

end