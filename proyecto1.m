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
f1 = @(R, Theta, Phi)((P./(2*pi.*E0.*R.^3))*(sin(Theta).*cos(Phi)))
f2 = @(R, Theta, Phi)((P./(2*pi.*E0.*R.^3))*(sin(Phi)./2));
f3 = @(R, Theta, Phi)((P./(2*pi.*E0.*R.^3))*-(cos(Theta).*cos(Phi))./2);
[XX,YY,ZZ]=sph2cart(f1(R, Theta, Phi),f2(R, Theta, Phi),f3(R, Theta, Phi));
quiver3(X,Y,Z, f1(R, Theta, Phi),f2(R, Theta, Phi),f3(R, Theta, Phi), "r")
fontSize = 20
title('Campo eléctrico producido por un dipolo electrico orientado al eje X', "FontSize",fontSize)
xlabel('EJE Z', "FontSize",fontSize) 
ylabel('EJE Y', "FontSize",fontSize) 
zlabel('EJE X', "FontSize",fontSize) 
hold all
