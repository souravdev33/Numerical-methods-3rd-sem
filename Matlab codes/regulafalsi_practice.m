clc

syms x;

y=input('Enter a non linear eqn : ');
a=input('Enter the first guess : ');
b=input('Enter the second guess : ');
e=input('Enter the tolerable value : ');


fa=eval(subs(y,x,a));
fb=eval(subs(y,x,b));


if(fa*fb>0)
    disp('Its not possible to find out the root of the eqn!!!');
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
   fprintf("\nThe root is %f",c);



