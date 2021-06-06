R=linspace(16, 20);
Q = 10
K = 1
E0 = 8.854187817*10^(-12);
E2 = Q./(4*pi.*R.^2*E0)
plot(R, E2)
title('Campo el�ctrico cuando "r" es mayor a "2b" vs distancia', "FontSize",fontSize)
xlabel('Distancia recorrida', "FontSize",fontSize) 
ylabel('Campo el�ctrico', "FontSize",fontSize) 