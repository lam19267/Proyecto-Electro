clearvars
P = 1
E0 = 8.854187817*10^(-12)

R=linspace(-10, 10);
Phi=linspace(0,pi);
Theta=linspace(0,2*pi);
[Phi,Theta]=meshgrid(Phi,Theta);
R = meshgrid(R)
[X,Y,Z]=sph2cart(Theta,Phi,R);
f = @(r, theta, phi) ((P.*sin(Theta).*sin(Phi))./(4.*pi.*E0.*R.^2));
% Z=R*sin(Phi);
% X=R*cos(Phi).*cos(Theta);
% Y=R*cos(Phi).*sin(Theta);
surf(X, Y, f(R, Theta, Phi));
fontSize = 20
title('Potencial producido por un dipolo electrico orientado al eje Y', "FontSize",fontSize)
xlabel('EJE X', "FontSize",fontSize) 
ylabel('EJE Z', "FontSize",fontSize) 
zlabel('EJE Y', "FontSize",fontSize) 