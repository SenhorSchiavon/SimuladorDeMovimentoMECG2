function [F] = funcao_trabalho(x0,q,data)

R = data.R;
c1 = data.c1;
c2 = data.c2;
x4 = data.x4;
y4 = data.y4;

A = x0(1);
B = x0(2);

F = [-R*cos(q)+c1*cos(A)+c2*cos(B)-x4;R*sin(q)+c1*sin(A)-c2*sin(B)-y4];

end