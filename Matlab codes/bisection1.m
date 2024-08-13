%clearing screen
clc

%setting x as a symbolic variable
syms x;

%input section

y=input('Enter a non-linear function : ');
a=input('ENter the first guess : ');
b=input('ENter the second guess : ');
e=input('Enter the tolerable error : ');

%Finding fuctional values
fa= eval(subs(y,x,a));
fb= eval(subs(y,x,b));

%implement the bisection method

if fa*fb>0
    disp('Its not possible to find the root');
else
    c=(a*fb-b*fa)/(fb-fa);
    fc=eval(subs(y,x,c));
    fprintf('\na\t\t\tb\t\t\tc\t\t\tfc\n');

    while abs(fc)>e
        c=(a*fb-b*fa)/(fb-fa);
        fc=eval(subs(y,x,c));
        fprintf('%f\t%f\t%f\t%f\n',a,b,c,fc);

        if(fa*fc<0)
            b=c;
            fb=eval(subs(y,x,b));

        else
            a=c;
            fa=eval(subs(y,x,a));
        end
    end

    fprintf('\n Root is : %f\n',c);
end
