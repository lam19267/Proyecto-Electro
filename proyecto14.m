Q = 10
a = 4
b = 8
Er = 80.1
densa = ((Q./(4*pi.*a.^2)).*(1-(1./Er)))
densb = ((Q./(4*pi.*b.^2)).*(1-(1./Er)))
Theta=linspace(0,2*pi);
R=linspace(densa, densb);
[Theta, R] = meshgrid(Theta, R);
Z = linspace(0, 1);
Z = meshgrid(Z);
[X,Y,Z]=pol2cart(Theta,R, Z);
surface(X, Y, R)
colormap jet;
colorbar
title('Mapa de colores de las densidades superficiales y volumétrica de polarización', "FontSize",fontSize)
xlabel('EJE X', "FontSize",fontSize) 
ylabel('EJE Y', "FontSize",fontSize) 
