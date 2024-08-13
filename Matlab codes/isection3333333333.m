clc

syms x;

y=input('Enter a non linear equation : ');
a=input('Enter first guess : ');
b=input('ENter second guess : ');
e=input('Enter tolearable error : ');


fa=eval(subs(y,x,a));
fb=eval(subs(y,x,b));

if(fa*fb>0)
    disp('Out of the brackets !!!!');
end

while(fa*fb>0)
    a=a+1;
    b=b+1;
    fa=eval(subs(y,x,a));
    fb=eval(subs(y,x,b));
end
    c=(a * fb - b * fa)/(fb-fa);
    fc=eval(subs(y,x,c));
    fprintf('\na\t\t\tb\t\t\tc\t\t\tfc\n');
    while(abs(fc)>e)
        fprintf('%f\t%f\t%f\t%f\n',a,b,c,fc);
        if(fa*fc<0)
            b=c;
        else
            a=c;
        end
        c=(a * fb - b * fa)/(fb-fa);
        fc=eval(subs(y,x,c));
    end
    fprintf('\n The root is : %f',c);