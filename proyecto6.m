a = 1;
b= 1;
q1=1;
q2= 2;
E0 = 8.854187817*10^(-12);
R=linspace(1, 1, 40);
Phi=linspace(0,-pi/2,40);

Theta=linspace(0,2*pi,40);
[Phi,Theta]=meshgrid(Phi,Theta);
R = meshgrid(R);
[X,Y,Z]=sph2cart(Theta,Phi,R);
f = @(R, Theta, Phi) ((b.*cos(Theta))./(2.*pi.*E0.*R.^2).*(q1.+q2));
f1 = @(R, Theta, Phi) ((b.*(q1.+q2))./(pi.*E0.*R.^3).*(cos(Theta))); 
f2 = linspace(0,0, 40)
F2 = meshgrid(f2)
f3 = @(R, Theta, Phi)((b.*(q1.+q2))./(pi.*E0.*R.^3).*(sin(Theta)./2));
quiver3(X,Y,Z, -f1(R, Theta, Phi),F2, -f3(R, Theta, Phi), "r")
hold all
%CAMBIAS SIGNOS DE  f1 y f3 y pi/2
fontSize = 20
title('Campo eléctrico por 2 dipolos eléctricos a una distancia a separados del eje Z', "FontSize",fontSize)
xlabel('EJE X', "FontSize",fontSize) 
ylabel('EJE Y', "FontSize",fontSize) 
zlabel('EJE Z', "FontSize",fontSize) 