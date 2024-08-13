%cleaRING SCREEN
clc

%SETTING X AS SYMBOLIC VARIABLE
syms x;



%INPUT SECTION
y=input('Enter a non_linear equation : ');
a=input('Enter first guess : ');
b=input('Enter second guess : ');
e=input('Tolerable error : ');


%FINDING FUNCTIONAL VALUES
fa=eval(subs(y,x,a));  %eval=evalution and subs=substitution
fb=eval(subs(y,x,b));   %here y is function and x value is substituted by the value of b



%IMPLEMENTING BISECTIONAL METHOD
if fa*fb>0
    disp('Given initial values do not bracket the root. ');
else
    c=a-(a-b) * fa/(fa-fb);
    fc=eval(subs(y,x,c));
    fprintf('\n\na\t\t\tb\t\t\tc\t\t\tf(c)\n'); %here printed x0 x1 x2 f(x2)
    
    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\n ',a,b,c,fc); %here printed the values of  x0 x1 x2 f(x2)
        if fa*fc<0
            b=c;
        else
            a=c;
        end
        c=a-(a-b) * fa/(fa-fb);
        fc=eval(subs(y,x,c));
    
    end
    fprintf('\nRoot is : %f\n',c);
    
end