clear all
close all
clc

% condicoes iniciais
x0 = [1;1];

% funcoes
funF = 'funcao_trabalho';
funJ = 'jacobiana_trabalho';

% parametros
R = 0.5;
c1 = 3.02035;
c2 = 3.0;
x4 = 4.0;
y4 = 2.0;
data = struct('R',R,'c1',c1,'c2',c2,'x4',x4,'y4',y4);

% intervalo de tempo
t = 0:0.1:20;


% solucao numerica
for i = 1:length(t)

  qnum(i) = 2*t(i);    
    
  [xnum,iter] = metodo_newton(x0,qnum(i),funF,funJ,data);
  Anum(i) = xnum(1);
  Bnum(i) = xnum(2);
  x0  = xnum;

end

% solucao analitica
for i = 1:length(t)
  
  qanal(i) = 2*t(i);
  
  % deslocamentos
  Aanal(i) = qanal*R*sin(qanal(i)-B)/c1*sin(A+B);
  Banal(i) = R*qanal*sin(q+a)/c2*sin(A+B);

end

% curvas de deslocamento
figure, plot(t,qnum,'r-',t,qanal,'b--'),xlabel('t'),ylabel('q'),legend('numerico','analitico')
figure, plot(t,Anum,'r-',t,Aanal,'b--'),xlabel('t'),ylabel('A'),legend('numerico','analitico')
figure, plot(t,Bnum,'r-',t,Bnum,'b--'),xlabel('t'),ylabel('X'),legend('numerico','analitico')




