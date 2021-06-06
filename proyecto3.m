clearvars
P = 1
E0 = 8.854187817*10^(-12)
R=linspace(1, 1);
Phi=linspace(0,-pi/2);
Theta=linspace(0,pi);
[Phi,Theta]=meshgrid(Phi,Theta);
R = meshgrid(R);
[X,Y,Z]=sph2cart(Theta,Phi,R);
f = @(R, Theta, Phi) ((P./(2*pi.*E0.*R.^3)).*(sin(Theta).*cos(Phi)+(sin(Phi)/2)-(cos(Theta).*cos(Phi))./2));
f1 = @(R, Theta, Phi)((P./(2*pi.*E0.*R.^3)).*(cos(Theta)))
f2 = linspace(0,0)
F2 = meshgrid(f2)
f3 = @(R, Theta, Phi)((P./(2*pi.*E0.*R.^3))*-(sin(Theta)./2));
[XX,YY,ZZ]=sph2cart(f1(R, Theta, Phi),F2,f3(R, Theta, Phi));
quiver3(X,Y,Z, f1(R, Theta, Phi),f3(R, Theta, Phi), F2 , "r")
hold all
fontSize = 20
title('Campo el�ctrico producido por un dipolo electrico orientado al eje Z', "FontSize",fontSize)
xlabel('EJE X', "FontSize",fontSize) 
ylabel('EJE Y', "FontSize",fontSize) 
zlabel('EJE Z', "FontSize",fontSize) 
