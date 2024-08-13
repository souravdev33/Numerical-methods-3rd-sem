clc

syms x;

y=input('Enter the non linear function : ');
a=input('Enter the lower bound : ');
b=input('Enter the higher bound :');
n=input('Enter the number of intervals : ');

fa=eval(subs(y,x,a));
fb=eval(subs(y,x,b));
integration=fa+fb;
dx=(b-a)/n;

for i=1:n-1
    k=a+(i*dx);
    fk=eval(subs(y,x,k));
    integration=integration+(fk*2);
end
    integration=(dx*integration)/2;
    disp('\nIntegration');
    disp(integration);
