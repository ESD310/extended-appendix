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
start_time20 = 11036; start_time40 = 5537; start_time60 = 4675; start_time80 = 7645; start_time100 = 8011; % Starttid
end_time20 = 38989; end_time40 = 19023; end_time60 = 14052; end_time80 = 14610; end_time100 = 13907; % Sluttid

% Filtrering af data for hver hastighed og opnå de filtrerede og nye værdier
[x20_filtered, y20_filtered, z20_filtered, time20_filtered, x20_new, y20_new, z20_new] = MovementDataFilter(data20, start_time20, end_time20);
[x40_filtered, y40_filtered, z40_filtered, time40_filtered, x40_new, y40_new, z40_new] = MovementDataFilter(data40, start_time40, end_time40);
[x60_filtered, y60_filtered, z60_filtered, time60_filtered, x60_new, y60_new, z60_new] = MovementDataFilter(data60, start_time60, end_time60);
[x80_filtered, y80_filtered, z80_filtered, time80_filtered, x80_new, y80_new, z80_new] = MovementDataFilter(data80, start_time80, end_time80);
[x100_filtered, y100_filtered, z100_filtered, time100_filtered, x100_new, y100_new, z100_new] = MovementDataFilter(data100, start_time100, end_time100);

% Opret figur og tilføj subplot
figure;

% Plot data for hver hastighed i gitterlayout
plot_movement_data_tiles(x20_filtered, y20_filtered, z20_filtered, x20_new, y20_new, z20_new, '$V = 7.15 \frac{cm}{s}$', 1);
%plot_movement_data_tiles(x40_filtered, y40_filtered, z40_filtered, x40_new, y40_new, z40_new, 'Speed 40', 2);
plot_movement_data_tiles(x60_filtered, y60_filtered, z60_filtered, x60_new, y60_new, z60_new, '$V = 21.33 \frac{cm}{s}$', 2);
plot_movement_data_tiles(x80_filtered, y80_filtered, z80_filtered-4, x80_new, y80_new, z80_new, '$V = 28.72 \frac{cm}{s}$', 3);
plot_movement_data_tiles(x100_filtered, y100_filtered, z100_filtered, x100_new, y100_new, z100_new, '$V = 33.92 \frac{cm}{s}$', 4);

function plot_movement_data_tiles(x_filtered, y_filtered, z_filtered, x_new, y_new, z_new, title_str, subplot_pos)
    % Plot i en subplot (gitter)
    subplot(2, 2, subplot_pos);
    hold on;
    
    % Plot de filtrerede og nye punkter med mindre størrelser
    plot3(x_filtered, y_filtered, z_filtered, 'bo', 'MarkerFaceColor', 'b', 'MarkerSize', 2); % Filtrerede punkter
    plot3(x_new, y_new, z_new, 'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 2); % Nye punkter
    
    % Plot linjer mellem filtrerede og nye punkter
    for i = 1:length(x_filtered)
        plot3([x_filtered(i), x_new(i)], [y_filtered(i), y_new(i)], [z_filtered(i), z_new(i)], 'k-');
    end
    
    % Titel og etiketter
    title(title_str, Interpreter="latex");
    xlabel('X $[m]$', Interpreter='latex'); ylabel('Y $[m]$', Interpreter='latex'); zlabel('Z $[m]$', Interpreter='latex');
    
    % Gitter og akseindstillinger
    grid on;
    axis equal;
    view(3); % 3D visning

    % Sæt de samme grænser for alle plottene
    xlim([-1, 1]);
    ylim([-1.5, 1.5]);
    zlim([0, 1]);
    
    hold off;
end
