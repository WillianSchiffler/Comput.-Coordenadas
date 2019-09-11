function [r2, phi2] = coord(x1,y1,theta1,r1,phi1,x2,y2,theta2)

    %Fun��o que retorna r2 e phi2;
    %
    %Para utiliz�-la, digite '[r2,phi2] = coord(x1,y1,theta1,r1,phi1,x2,y2,theta2)' e d� enter. 
    %
    %Nesse caso, 'r2 e phi2' s�o valores de sa�da e 'x1,y1,theta1,r1,phi1,x2,y2 e theta2' s�o os
    %valores de entrada (de acordo com a atividade);
    %
    %Legenda:
    %r2 = Dist�ncia do navio 2 at� o objeto (SA�DA);
    %phi2 = �ngulo do objeto em rela��o ao �ngulo em que o navio 2 navega (SA�DA);
    %x1 = Coordenada x do navio 1 (ENTRADA);
    %y1 = Coordenada y do navio 1 (ENTRADA);
    %theta1 = �ngulo de dire��o do navio 1 (ENTRADA);
    %r1 = Dist�ncia do objeto em rela��o ao navio 1 (ENTRADA);
    %phi1 = �ngulo do objeto em rela��o ao �ngulo em que o navio 1 navega (ENTRADA);
    %x2 = Coordenada x do navio 2 (ENTRADA);
    %OBS. x2: A coordenada x2 precisa ser um valor grande o suficiente para
    %o navio 2 estar sempre ao lado do objeto, como diz na atividade;
    %y2 = Coordenada y do navio 2 (ENTRADA);
    %theta2 = �ngulo de dire��o do navio 2 (ENTRADA);

    alpha = ((theta1 - phi1)*(pi/180));  %�ngulo auxiliar;
    w1 = r1*(sin(alpha));  %Coordenada x do navio 1 at� o objeto;
    z1 = r1*(cos(alpha));  %Coordenada y do navio 1 at� o objeto;
    X = x1+z1;  %Coordenada x do objeto;
    Y = y1+w1;  %Coordenada y do objeto;
    
    z2 = x2-X;  %coordenada x do navio 2 at� o objeto;
    w2 = Y-y2;  %coordenada y do navio 2 at� o objeto;
    r2 = sqrt((z2^2)+(w2^2));  %Dist�ncia do navio 2 at� o objeto;
    beta = ((atan(w2/z2))*(180/pi));  %�ngulo auxiliar
    phi2 = (180-(beta+theta2));  %�ngulo do objeto em rela��o ao �ngulo em que o navio 2 navega;

end