clear all;
clc;

% Læs data fra filerne
data5 = readtable("5HzTime.log");
data6 = readtable("6HzBetter.log");
data7 = readtable("7Hz.log");
data8 = readtable("8Hz.log");

% Ekstraher ID og TIME kolonnerne
ID5 = data5.ID;
time5 = data5.TIME;
ID6 = data6.ID;
time6 = data6.TIME;
ID7 = data7.ID;
time7 = data7.TIME;
ID8 = data8.ID;
time8 = data8.TIME;

% Beregn tidsintervallene for hver fil
time_intervals5 = diff(time5);  % Tidsinterval mellem målingerne i data5
time_intervals6 = diff(time6);  % Tidsinterval mellem målingerne i data6
time_intervals7 = diff(time7);  % Tidsinterval mellem målingerne i data7
time_intervals8 = diff(time8);  % Tidsinterval mellem målingerne i data8

datatime1 = 300;
datatime2 = 250;
datatime3 = 200;


% Tæl punkter, der er større end specified_time for hver datasæt
count5 = sum(time_intervals5 > datatime1);
count6 = sum(time_intervals6 > datatime1);
count7 = sum(time_intervals7 > datatime2);
count8 = sum(time_intervals8 > datatime3);

% Udskriv resultaterne
disp(['Antal punkter i data5, der er større end ', num2str(datatime1), ': ', num2str(count5)]);
disp(['Antal punkter i data6, der er større end ', num2str(datatime1), ': ', num2str(count6)]);
disp(['Antal punkter i data7, der er større end ', num2str(datatime2), ': ', num2str(count7)]);
disp(['Antal punkter i data8, der er større end ', num2str(datatime3), ': ', num2str(count8)]);

% Opret tiled layout for at arrangere scatterplots i separate tiles
figure;
tiledlayout(2, 2);  % 2 række og 2 kolonner

% Scatterplot for data5
nexttile;
scatter(1:length(time_intervals5), time_intervals5, 36, ID5(2:end), 'filled');  % 36 er størrelsen på punkterne
xlabel('Measurement index');
ylabel('Time interval (TIME)');
title('5Hz measurement: Scatterplot ');


nexttile;
scatter(1:length(time_intervals6), time_intervals6, 36, ID6(2:end), 'filled');  % 36 er størrelsen på punkterne
xlabel('Measurement index');
ylabel('Time interval (TIME)');
title('6Hz measurement: Scatterplot ');



nexttile;
scatter(1:length(time_intervals7), time_intervals7, 36, ID7(2:end), 'filled');  % 36 er størrelsen på punkterne
xlabel('Measurement index');
ylabel('Time interval (TIME)');
title('7Hz measurement: Scatterplot ');




% Scatterplot for data8
nexttile;
scatter(1:length(time_intervals8), time_intervals8, 36, ID8(2:end), 'filled');  % 36 er størrelsen på punkterne
xlabel('Measurement index');
ylabel('Time interval (TIME)');
title('8Hz measurement: Scatterplot ');

colormap(lines);  % Farveskala for data8

% Juster layout for at undgå overlap af labels og titler
sgtitle('Time interval between measurements');
