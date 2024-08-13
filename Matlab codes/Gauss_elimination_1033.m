clc;
y = input('Please Enter the size of the equation system n=');
c = input('Please Enter the elements of the Matrix c');
b = input('Please Enter the elements of the Matrix b');
dett = det(c);

if dett == 0
    disp('This system is unsolvable because det(c) = 0');
else
    a = [c, b];
end
7
% Gaussian elimination method
[m, n] = size(a);

for j = 1:m-1
    for z = j+1:m
        % Check if the pivot is zero and swap rows if necessary
        if a(j,j) == 0
            t = a(j,:);
            a(j,:) = a(z,:);
            a(z,:) = t;
        end
    end
    
    for i = j+1:m
        a(i,:) = a(i,:) - a(j,:) * a(i,j) / a(j,j);
    end
end

x = zeros(1, m);

for s = m:-1:1
    c = 0;
    for k = s+1:m
        c = c + a(s,k) * x(k);
    end
    x(s) = (a(s,n) - c) / a(s,s);
end

disp('Gauss Elimination method:');
disp('Matrix a:');
disp(a);
disp('Solution vector x:');
disp(x');