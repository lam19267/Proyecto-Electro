R=linspace(8, 16);
Q = 10
K = 1
E0 = 8.854187817*10^(-12);
E2 = Q./(4*pi.*R.^2*E0)+((K.*R)/E0)
plot(R, E2)
title('Campo eléctrico cuando "r" es mayor a "b" y menor a "2b"   vs distancia', "FontSize",fontSize)
xlabel('Distancia recorrida', "FontSize",fontSize) 
ylabel('Campo eléctrico', "FontSize",fontSize) 