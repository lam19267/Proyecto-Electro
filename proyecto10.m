R=linspace(0, 4);
Q = 10
E0 = 8.854187817*10^(-12);
E1 = Q./(4*pi.*R.^2*E0)
plot(R, E1)
title('Campo eléctrico cuando "r" es menor a "a"   vs distancia', "FontSize",fontSize)
xlabel('Distancia recorrida', "FontSize",fontSize) 
ylabel('Campo eléctrico', "FontSize",fontSize) 