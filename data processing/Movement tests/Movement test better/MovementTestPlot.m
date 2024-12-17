clear all;
clc;

% Indlæs data fra .log-filen
data20 = readtable('C:\Users\rasmu\OneDrive - Aalborg Universitet\General - ESD310\P3 Projekt\Tests\Movement test better\Test1_speed20.log', ...
    'Delimiter', ',', 'FileType', 'text', 'Format', '%f%f%f%f%f%f');
data40 = readtable('C:\Users\rasmu\OneDrive - Aalborg Universitet\General - ESD310\P3 Projekt\Tests\Movement test better\Test2_speed40.log', ...
    'Delimiter', ',', 'FileType', 'text', 'Format', '%f%f%f%f%f%f');
data60 = readtable('C:\Users\rasmu\OneDrive - Aalborg Universitet\General - ESD310\P3 Projekt\Tests\Movement test better\Test3_speed60.log', ...
    'Delimiter', ',', 'FileType', 'text', 'Format', '%f%f%f%f%f%f');
data80 = readtable('C:\Users\rasmu\OneDrive - Aalborg Universitet\General - ESD310\P3 Projekt\Tests\Movement test better\Test4_speed80.log', ...
    'Delimiter', ',', 'FileType', 'text', 'Format', '%f%f%f%f%f%f');
data100 = readtable('C:\Users\rasmu\OneDrive - Aalborg Universitet\General - ESD310\P3 Projekt\Tests\Movement test better\Test5_speed100.log', ...
    'Delimiter', ',', 'FileType', 'text', 'Format', '%f%f%f%f%f%f');

% Definer start- og sluttid i millisekunder
start_time20 = 11036; start_time40 = 5537; start_time60 = 4675; start_time80 = 7645; start_time100 = 8011;% Starttid
end_time20 = 38989; end_time40 = 19023; end_time60 = 14052; end_time80 = 14610; end_time100 = 13907; % Sluttid

% Filtrering af data for hver hastighed
[x20_filtered, y20_filtered, z20_filtered, time20_filtered, x20_new, y20_new, z20_new] = MovementDataFilter(data20, start_time20, end_time20);
[x40_filtered, y40_filtered, z40_filtered, time40_filtered, x40_new, y40_new, z40_new] = MovementDataFilter(data40, start_time40, end_time40);
[x60_filtered, y60_filtered, z60_filtered, time60_filtered, x60_new, y60_new, z60_new] = MovementDataFilter(data60, start_time60, end_time60);
[x80_filtered, y80_filtered, z80_filtered, time80_filtered, x80_new, y80_new, z80_new] = MovementDataFilter(data80, start_time80, end_time80);
[x100_filtered, y100_filtered, z100_filtered, time100_filtered, x100_new, y100_new, z100_new] = MovementDataFilter(data100, start_time100, end_time100);

% Opret figur og tilføj subplot
%figure;

% Plot for hver hastighedstest i et subplot
%plotMovementData(x20_filtered, y20_filtered, z20_filtered, time20_filtered, x20_new-0.05, y20_new, z20_new, 20, 1);
%plotMovementData(x40_filtered, y40_filtered, z40_filtered, time40_filtered, x40_new-0.05, y40_new, z40_new, 40, 2);
%plotMovementData(x60_filtered, y60_filtered, z60_filtered, time60_filtered, x60_new-0.05, y60_new, z60_new, 60, 3);
%plotMovementData(x80_filtered, y80_filtered, z80_filtered-4, time80_filtered, x80_new-0.05, y80_new, z80_new, 80, 4);
%plotMovementData(x100_filtered, y100_filtered, z100_filtered, time100_filtered, x100_new-0.05, y100_new, z100_new, 100, 5);



% Plot 3D scatter plot for hver hastighed med linjer mellem filtrerede og nye punkter
figure;
hold on;

% Plot for Test1 (Speed 20)
plot3(x20_filtered, y20_filtered, z20_filtered, 'bo-', 'DisplayName', 'Filtrerede punkter (20)', 'MarkerFaceColor', 'b');
plot3(x20_new, y20_new, z20_new, 'ro-', 'DisplayName', 'Nye punkter (20)', 'MarkerFaceColor', 'r');

% Forbind filtrerede punkter med deres nye punkter
for i = 1:length(x20_filtered)
    plot3([x20_filtered(i), x20_new(i)], [y20_filtered(i), y20_new(i)], [z20_filtered(i), z20_new(i)], 'k-', 'LineWidth', 2);
end

% Plot for Test2 (Speed 40)
plot3(x40_filtered, y40_filtered, z40_filtered, 'bo-', 'DisplayName', 'Filtrerede punkter (40)', 'MarkerFaceColor', 'b');
plot3(x40_new, y40_new, z40_new, 'ro-', 'DisplayName', 'Nye punkter (40)', 'MarkerFaceColor', 'r');

% Forbind filtrerede punkter med deres nye punkter
for i = 1:length(x40_filtered)
    plot3([x40_filtered(i), x40_new(i)], [y40_filtered(i), y40_new(i)], [z40_filtered(i), z40_new(i)], 'k-', 'LineWidth', 2);
end

% Plot for Test3 (Speed 60)
plot3(x60_filtered, y60_filtered, z60_filtered, 'bo-', 'DisplayName', 'Filtrerede punkter (60)', 'MarkerFaceColor', 'b');
plot3(x60_new, y60_new, z60_new, 'ro-', 'DisplayName', 'Nye punkter (60)', 'MarkerFaceColor', 'r');

% Forbind filtrerede punkter med deres nye punkter
for i = 1:length(x60_filtered)
    plot3([x60_filtered(i), x60_new(i)], [y60_filtered(i), y60_new(i)], [z60_filtered(i), z60_new(i)], 'k-', 'LineWidth', 2);
end

% Plot for Test4 (Speed 80)
plot3(x80_filtered, y80_filtered, z80_filtered, 'bo-', 'DisplayName', 'Filtrerede punkter (80)', 'MarkerFaceColor', 'b');
plot3(x80_new, y80_new, z80_new, 'ro-', 'DisplayName', 'Nye punkter (80)', 'MarkerFaceColor', 'r');

% Forbind filtrerede punkter med deres nye punkter
for i = 1:length(x80_filtered)
    plot3([x80_filtered(i), x80_new(i)], [y80_filtered(i), y80_new(i)], [z80_filtered(i), z80_new(i)], 'k-', 'LineWidth', 2);
end

% Plot for Test5 (Speed 100)
plot3(x100_filtered, y100_filtered, z100_filtered, 'bo-', 'DisplayName', 'Filtrerede punkter (100)', 'MarkerFaceColor', 'b');
plot3(x100_new, y100_new, z100_new, 'ro-', 'DisplayName', 'Nye punkter (100)', 'MarkerFaceColor', 'r');

% Forbind filtrerede punkter med deres nye punkter
for i = 1:length(x100_filtered)
    plot3([x100_filtered(i), x100_new(i)], [y100_filtered(i), y100_new(i)], [z100_filtered(i), z100_new(i)], 'k-', 'LineWidth', 2);
end

% Tilføj labels og legend
xlabel('X');
ylabel('Y');
zlabel('Z');
legend;
title('Forbin');
hold off;
