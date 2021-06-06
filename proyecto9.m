Q = 10;
R=linspace(0, 10);
DT = 3*Q./(4*pi.*R.^2)
plot(R, DT)
fontSize = 20
title('Desplazamiento el�ctrico total del sistema vs distancia', "FontSize",fontSize)
xlabel('Distancia recorrida', "FontSize",fontSize) 
ylabel('Desplazamiento el�ctrico', "FontSize",fontSize) 