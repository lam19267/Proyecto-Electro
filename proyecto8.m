K = 1
a0 = 1
a= 1
b= 2
densa = -K*e.^(-(a.^2)/a0)
densb = -K*e.^(-(b.^2)/a0)
densv = @(s) (-K.*e.^(-(s.^2)./a0)./s).*(1-((2*s.^2)/a0))
Theta=linspace(0,2*pi);
R=linspace(a, b);
[Theta, R] = meshgrid(Theta, R);
Z = linspace(-10, 10);
Z = meshgrid(Z);
[X,Y,Z]=pol2cart(Theta,R, Z);
surface(X, Y, densv(R))
colormap jet;
color = colorbar
fontSize = 20
title('Mapa de colores de las densidades de carga de polarización', "FontSize",fontSize)
xlabel('EJE X', "FontSize",fontSize) 
ylabel('EJE Y', "FontSize",fontSize) 


