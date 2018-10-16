% ARQUIVO DA TAREFA 3
% Este arquivo implementa:
% 1 - C�lculo de m�dia, desvio padrao e curtose
% 2 - Exibi��o de histogramas 

clear, clc;

%  TAREFAS A SEREM FEITAS
% 1) Ler o arquivo de dados do paciente
load ('..\dados\C0005201_Paciente.mat') % Mude aqui o local da sua variav.
potencia_paciente = Potencia_Total_Sinal;
clear Potencia_Total_Sinal;
load ('..\dados\C0005201_RUIDO.mat') % Mude aqui o local da sua variav.
ruido_paciente = Potencia_Total_Sinal;
clear Potencia_Total_Sinal;

vetor_validos = [4,5,6,8,9,10,11,12,13,14,15,16,18,19,20];
potencia_valida = potencia_paciente(vetor_validos,:);
ruido_valido = ruido_paciente(vetor_validos,:);

percentual_ruido = (ruido_valido ./ potencia_valida) * 100;


% % 1) Pegar a primeira epoca da variael xn
% epoca_um = epochsValues{1};
% 
% % 1) Pegar a potencia da primeira epoca
% potencia_epoca_um = Potencia_Total_Sinal(:,1);
% 
% % 1) M�dias
% media_epoca_um = mean(epoca_um);
% media_potencia = mean(potencia_epoca_um);
% 
% % 1) Desvio padrao
% dv_epoca_um = std(epoca_um);
% dv_potencia = std(potencia_epoca_um);
% 
% % 1) Kurtosis
% k_epoca_um = kurtosis(potencia_epoca_um);
% k_potencia = kurtosis(epoca_um);
% 
% % 1) Calculo de um terco das epocas
% terco = epoca_um(:,1:length(epoca_um)/3);
% 
% 
% % 1) Exibicao do histograma do sinal xn
% subplot(1,3,1);
% histfit(xn(1,:));
% title('XN');
% ylabel("N� Ocorrencias");
% xlabel("Tens�o [uV]");
% 
% % 1) Exibicao do histograma do sinal epoca_um
%  subplot(1,3,2);
% histfit(epoca_um(1,:));
% title('�poca 1');
% ylabel("N� Ocorrencias");
% xlabel("Tens�o [uV]");
% 
% % 1) Exibicao do histograma do sinal terco
% subplot(1,3,3);
% histfit(terco(1,:));
% title('Ter�o da �poca 1');
% ylabel("N� Ocorrencias");
% xlabel("Tens�o [uV]");
% 
% % Pegar a potencia total e comparar o valor do ru�do por eletrodo e dar o
% % resultado em porcentagem.
