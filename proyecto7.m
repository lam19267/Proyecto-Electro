E0 = 8.854187817*10^(-12);
R=linspace(0, 1);
Phi=linspace(0,pi);
Theta=linspace(0,2*pi);
[Phi,Theta]=meshgrid(Phi,Theta);
R = meshgrid(R);
[X,Y,Z]=sph2cart(Theta,Phi,R);
P2 =@(x) ((1/2).*((3.*x.^2)-1));
f = @(R, Theta, Phi) ((1)./(4.*pi.*E0).*((1/4)+((R.^2)/120)*P2(cos(Theta))));
% Z=R*sin(Phi);
% X=R*cos(Phi).*cos(Theta);
% Y=R*cos(Phi).*sin(Theta);
surf(X, Y, f(R, Theta, Phi));
hold all
fontSize = 20
title('Potencial aproximado generado por una densidad de carga', "FontSize",fontSize)
xlabel('EJE X', "FontSize",fontSize) 
ylabel('EJE Y', "FontSize",fontSize) 
zlabel('EJE Z', "FontSize",fontSize) 