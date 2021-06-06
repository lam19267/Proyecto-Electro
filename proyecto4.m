h = 1;
q=1;
alpha = 45;
E0 = 8.854187817*10^(-12);
b= h.*sin(alpha);
d= h.*cos(alpha);
R=linspace(1, 1, 30);
Phi=linspace(0,pi/2,30);
Theta=linspace(0,2*pi,30);
[Phi,Theta]=meshgrid(Phi,Theta);
R = meshgrid(R);
[X,Y,Z]=sph2cart(Theta,Phi,R);

f1 = @(R, Theta, Phi)((h.*q)./(pi.*E0.*R.^3)).*((sin(alpha).*sin(Theta).*sin(Phi)).+(cos(alpha).*(cos(Theta))))
f2 = @(R, Theta, Phi)((-h.*q)./(pi.*E0.*R.^3)).*((sin(alpha).*cos(Theta))./2)
f3 = @(R, Theta, Phi)((-h.*q)./(pi.*E0.*R.^3)).*-((sin(alpha).*cos(Theta).*sin(Phi)).-(cos(alpha).*(sin(Theta))))
[XX,YY,ZZ]=sph2cart(f1(R, Theta, Phi),f2(R, Theta, Phi),f3(R, Theta, Phi));

quiver3(X,Y,Z, f1(R, Theta, Phi),f2(R, Theta, Phi), f3(R, Theta, Phi) , "r")
hold all
fontSize = 20
title('Campo producido por un dipolo electrico con un ángulo con respecto al eje Z', "FontSize",fontSize)
xlabel('EJE X', "FontSize",fontSize) 
ylabel('EJE Y', "FontSize",fontSize) 
zlabel('EJE Z', "FontSize",fontSize) 