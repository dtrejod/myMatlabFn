clear all
x=-10:.1:10;
[X,Y] = meshgrid(x);
%Form: ( a * x + b * y + c * z = d )
a=3; b=2; c=1; d=6;
Z=(d- a * X - b * Y)/c;
surf(X,Y,Z)
shading flat
xlabel('x'); ylabel('y'); zlabel('z')

% Line

% Your two points
P1 = [1/3 1 3];
P2 = [91/3 21 13];

% Their vertial concatenation is what you want
pts = [P1; P2];

% Because that's what line() wants to see    
line(pts(:,1), pts(:,2), pts(:,3))

% Alternatively, you could use plot3:
%plot3(pts(:,1), pts(:,2), pts(:,3))

%POINT
P3 = [1/3 1 3];

plot3(1/3 1 3);