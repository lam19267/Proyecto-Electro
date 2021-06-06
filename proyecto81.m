K = 1
a0 = 1
a= 1
b= 2
E0 = 8.854187817*10^(-12);
E =@(R) (-(K.*e.^(-(R.^2)/a0))./E0)

R=linspace(a, b, 30);
Theta=linspace(0,2*pi,30);
[R,Theta]=meshgrid(R,Theta);
Z = linspace(0, 10,30);
Z = meshgrid(Z);
c = linspace(0,1,30)
c = meshgrid(c)
[X,Y,Z]=pol2cart(Theta,R, Z);
quiver3(X,Y,Z,c,c, E(R));
hold all
contour(X,Y,Z)
fontSize = 20
title('Campo eléctrico por el sistema cilindro dieléctrico', "FontSize",fontSize)
xlabel('EJE X', "FontSize",fontSize) 
ylabel('EJE Y', "FontSize",fontSize) 
zlabel('EJE Z', "FontSize",fontSize) 