
clc   % Clearing Screen
syms x;   % Setting x as symbolic variable
% Input Section
y = input('Enter non-linear equations: ');
a = input('Enter initial guess: ');
e = input('Tolerable error: ');
N = input('Enter maximum number of steps: ');

step = 1;  % Initializing step counter

% Finding derivate of given function
g = diff(y,x);

% Finding Functional Value
fa = eval(subs(y,x,a));

while abs(fa)> e
    fa = eval(subs(y,x,a));
    ga = eval(subs(g,x,a));
    if ga == 0
        disp('Division by zero.');
        break;
    end
    b = a - fa/ga; %this is the real equation of this method
    
    fprintf('step=%d\ta=%f\tf(a)=%f\n',step,a,fa);
    a = b;
    if step>N
       disp('Not convergent'); 
       break;
    end
    step = step + 1;
end

fprintf('Root is %f\n', a);