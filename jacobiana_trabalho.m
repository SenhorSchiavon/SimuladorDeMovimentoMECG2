function [J] = jacobiana_trabalho(x0,q,data)

R = data.R;
c1 = data.c1;
c2 = data.c2;
y4 = data.y4;
x4 = data.x4;

A = x0(1);
B = x0(2);

J = [-c1*sin(A),-c2*sin(B) ; c1*cos(A),-c2*cos(B)]; 

end