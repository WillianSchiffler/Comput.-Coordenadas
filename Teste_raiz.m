%Esse script calcula a raíz quadrada de um número.

i = 1; %Variável auxiliar;
while i == 1
x = input('Entre com um número real positivo: '); %Parâmetro de entrada;

if x >= 0 % Nesse caso, tem como calcular a raiz...
    rq = raiz(x); %Chama a função raiz;
    fprintf('Raiz = %.3f\n', rq); %Saída do resultado com três casas decimais;
    
else % Usuário digitou um número negativo;
    disp('Número inválido!')
    disp(' '); %Pular uma linha;
end

i = input('Para calcular outra raíz, digite (1). ');
disp(' '); %Pular uma linha;
end

disp('Funcao terminada. Obrigado'); %Terminou; :)