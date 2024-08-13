clc

syms x;

y=input('Enter the non_lineeaar function :');
a=input('Enter the first guess : ');
b=input('Enter the second guess : ');
e=input('Enter the torerable value : ');


fa=eval(subs(y,x,a));
fb=eval(subs(y,x,b));


if(fa*fb>0)
    disp('Cant find the root of the equation!!!');
end

while(fa*fb>0)
    a=a+1;
    b=b+1;
    fa=eval(subs(y,x,a));
    fb=eval(subs(y,x,b));
end
    c=(a+b)/2;
    fc=eval(subs(y,x,c));
    fprintf('\na\t\t\tb\t\t\tc\t\t\tf(c)\n');
    while(abs(fc)>e)
        fprintf('\n%f\t%f\t%f\t%f',a,b,c,fc);
        if(fa*fc<0)
            b=c;
        else
            a=c;
        end;

        c=(a+b)/2;
        fc=eval(subs(y,x,c));
    end
    fprintf('\nThe root is : %f',c);
   