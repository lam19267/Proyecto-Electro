R=linspace(4, 8);
Q = 10
Er = 80.1
E0 = 8.854187817*10^(-12);
E2 = Q./(4*pi.*R.^2*E0*Er)
plot(R, E2)
title('Campo eléctrico cuando "r" es mayor a "a" y menor a "b"   vs distancia', "FontSize",fontSize)
xlabel('Distancia recorrida', "FontSize",fontSize) 
ylabel('Campo eléctrico', "FontSize",fontSize) 