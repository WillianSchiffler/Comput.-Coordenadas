%Esse script calcula a ra�z quadrada de um n�mero.

i = 1; %Vari�vel auxiliar;
while i == 1
x = input('Entre com um n�mero real positivo: '); %Par�metro de entrada;

if x >= 0 % Nesse caso, tem como calcular a raiz...
    rq = raiz(x); %Chama a fun��o raiz;
    fprintf('Raiz = %.3f\n', rq); %Sa�da do resultado com tr�s casas decimais;
    
else % Usu�rio digitou um n�mero negativo;
    disp('N�mero inv�lido!')
    disp(' '); %Pular uma linha;
end

i = input('Para calcular outra ra�z, digite (1). ');
disp(' '); %Pular uma linha;
end

disp('Funcao terminada. Obrigado'); %Terminou; :)