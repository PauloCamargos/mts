% ARQUIVO DA TAREFA 3
% Este arquivo implementa:
% 1 - Cálculo de média, desvio padrao e curtose
% 2 - Exibição de histogramas 

clear, clc;

%  TAREFAS A SEREM FEITAS
% 1) Ler o arquivo de dados do paciente
load ('..\dados\C0005201_Paciente.mat') % Mude aqui o local da sua variav.

% 1) Pegar a primeira epoca da variael xn
epoca_um = epochsValues{1};

% 1) Pegar a potencia da primeira epoca
potencia_epoca_um = Potencia_Total_Sinal(:,1);

% 1) Médias
media_epoca_um = mean(epoca_um);
media_potencia = mean(potencia_epoca_um);

% 1) Desvio padrao
dv_epoca_um = std(epoca_um);
dv_potencia = std(potencia_epoca_um);

% 1) Kurtosis
k_epoca_um = kurtosis(potencia_epoca_um);
k_potencia = kurtosis(epoca_um);

% 1) Calculo de um terco das epocas
terco = epoca_um(:,1:length(epoca_um)/3);


% 1) Exibicao do histograma do sinal xn
subplot(1,3,1);
histfit(xn(1,:));
title('XN');
ylabel("Nº Ocorrencias");
xlabel("Tensão [uV]");

% 1) Exibicao do histograma do sinal epoca_um
 subplot(1,3,2);
histfit(epoca_um(1,:));
title('Época 1');
ylabel("Nº Ocorrencias");
xlabel("Tensão [uV]");

% 1) Exibicao do histograma do sinal terco
subplot(1,3,3);
histfit(terco(1,:));
title('Terço da Época 1');
ylabel("Nº Ocorrencias");
xlabel("Tensão [uV]");