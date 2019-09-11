function [r2, phi2] = coord(x1,y1,theta1,r1,phi1,x2,y2,theta2)

    %Função que retorna r2 e phi2;
    %
    %Para utilizá-la, digite '[r2,phi2] = coord(x1,y1,theta1,r1,phi1,x2,y2,theta2)' e dê enter. 
    %
    %Nesse caso, 'r2 e phi2' são valores de saída e 'x1,y1,theta1,r1,phi1,x2,y2 e theta2' são os
    %valores de entrada (de acordo com a atividade);
    %
    %Legenda:
    %r2 = Distância do navio 2 até o objeto (SAÍDA);
    %phi2 = Ângulo do objeto em relação ao ângulo em que o navio 2 navega (SAÍDA);
    %x1 = Coordenada x do navio 1 (ENTRADA);
    %y1 = Coordenada y do navio 1 (ENTRADA);
    %theta1 = Ângulo de direção do navio 1 (ENTRADA);
    %r1 = Distância do objeto em relação ao navio 1 (ENTRADA);
    %phi1 = Ângulo do objeto em relação ao ângulo em que o navio 1 navega (ENTRADA);
    %x2 = Coordenada x do navio 2 (ENTRADA);
    %OBS. x2: A coordenada x2 precisa ser um valor grande o suficiente para
    %o navio 2 estar sempre ao lado do objeto, como diz na atividade;
    %y2 = Coordenada y do navio 2 (ENTRADA);
    %theta2 = Ângulo de direção do navio 2 (ENTRADA);

    alpha = ((theta1 - phi1)*(pi/180));  %Ângulo auxiliar;
    w1 = r1*(sin(alpha));  %Coordenada x do navio 1 até o objeto;
    z1 = r1*(cos(alpha));  %Coordenada y do navio 1 até o objeto;
    X = x1+z1;  %Coordenada x do objeto;
    Y = y1+w1;  %Coordenada y do objeto;
    
    z2 = x2-X;  %coordenada x do navio 2 até o objeto;
    w2 = Y-y2;  %coordenada y do navio 2 até o objeto;
    r2 = sqrt((z2^2)+(w2^2));  %Distância do navio 2 até o objeto;
    beta = ((atan(w2/z2))*(180/pi));  %Ângulo auxiliar
    phi2 = (180-(beta+theta2));  %Ângulo do objeto em relação ao ângulo em que o navio 2 navega;

end