clearvars
P = 1
E0 = 8.854187817*10^(-12)
R=linspace(1, 1);
Phi=linspace(0,-pi/2);
Theta=linspace(0,pi);
[Phi,Theta]=meshgrid(Phi,Theta);
R = meshgrid(R);
[X,Y,Z]=sph2cart(Theta,Phi,R);
f = @(R, Theta, Phi) ((P./(2*pi.*E0.*R.^3))*(sin(Theta).*cos(Phi)+(sin(Phi)/2)-(cos(Theta).*cos(Phi))./2));
f1 = @(R, Theta, Phi)((P./(2*pi.*E0.*R.^3))*(sin(Theta).*sin(Phi)))
f2 = @(R, Theta, Phi)((P./(2*pi.*E0.*R.^3))*(cos(Phi)./2));
f3 = @(R, Theta, Phi)((P./(2*pi.*E0.*R.^3))*-(sin(Theta).*sin(Phi))./2);
[XX,YY,ZZ]=sph2cart(f1(R, Theta, Phi),f2(R, Theta, Phi),f3(R, Theta, Phi));
% Z=R*sin(Phi);
% X=R*cos(Phi).*cos(Theta);
% Y=R*cos(Phi).*sin(Theta);
quiver3(X,Y,Z, f1(R, Theta, Phi),f2(R, Theta, Phi),f3(R, Theta, Phi))
hold all
%contour3(X, Y, Z, f1(R, Theta, Phi),f2(R, Theta, Phi),f3(R, Theta, Phi))