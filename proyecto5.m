a = 1;
b= 1;
q1=1;
q2= 2;
E0 = 8.854187817*10^(-12);
R=linspace(-10, 10);
Phi=linspace(0,pi);
Theta=linspace(0,2*pi);
[Phi,Theta]=meshgrid(Phi,Theta);
R = meshgrid(R);
[X,Y,Z]=sph2cart(Theta,Phi,R);
f = @(R, Theta, Phi) ((b.*cos(Theta))./(2.*pi.*E0.*R.^2).*(q1+q2));
% Z=R*sin(Phi);
% X=R*cos(Phi).*cos(Theta);
% Y=R*cos(Phi).*sin(Theta);
surf(X, Y, f(R, Theta, Phi));
fontSize = 20
title('Potencial por 2 dipolos eléctricos a una distancia a separados del eje Z', "FontSize",fontSize)
xlabel('EJE X', "FontSize",fontSize) 
ylabel('EJE Y', "FontSize",fontSize) 
zlabel('EJE Z', "FontSize",fontSize) 

