clearvars
P = 1
E0 = 8.854187817*10^(-12)
R=linspace(1, 1, 30);
Phi=linspace(0, pi/2, 30);
Theta=linspace(0,pi/2,30);
[Phi,Theta]=meshgrid(Phi,Theta);
R = meshgrid(R);
[X,Y,Z]=sph2cart(Theta,Phi,R);
f = @(R, Theta, Phi) ((P./(2*pi.*E0.*R.^3)).*(sin(Theta).*cos(Phi)+(sin(Phi)/2)-(cos(Theta).*cos(Phi))./2));
f1 = @(R, Theta, Phi)((P./(2*pi.*E0.*R.^3)).*(sin(Theta).*sin(Phi)))
f2 = @(R, Theta, Phi)((P./(2*pi.*E0.*R.^3)).*(cos(Phi)./2));
f3 = @(R, Theta, Phi)((P./(2*pi.*E0.*R.^3)).*-(sin(Theta).*sin(Phi))./2);
[XX,YY,ZZ]=sph2cart(f1(R, Theta, Phi),f2(R, Theta, Phi),f3(R, Theta, Phi));
quiver3(X,Y,Z, f1(R, Theta, Phi),f2(R, Theta, Phi), f3(R, Theta, Phi), "r")
hold all
fontSize = 20
title('Campo eléctrico producido por un dipolo electrico orientado al eje Y', "FontSize",fontSize)
xlabel('EJE X', "FontSize",fontSize) 
ylabel('EJE Z', "FontSize",fontSize) 
zlabel('EJE Y', "FontSize",fontSize) 