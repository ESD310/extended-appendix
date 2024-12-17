clear all;
clc;

% Indlæs filen som en tabel
data = readtable('distance_data.csv');

% Adgang til kolonner
distance = data.Distance; % Kolonnen "Distance"
tof = data.TOF;           % Kolonnen "TOF"

% Liste over distances (50, 100, ..., 650)
distances = [50, 100, 150, 200, 250, 300, 350, 400, 450, 500, 550, 600, 650];

% Opret tomme arrays til lagring af alle filtrerede data
all_filtered_distances = [];
all_filtered_tof = [];

% For-løkke over hver distance
for i = 1:length(distances)
    target_distance = distances(i); % Nuværende distance
    
    % Filtrer data for denne distance
    [filtered_distance, filtered_tof] = filter_iqr(distance, tof, target_distance);
    
    % Saml alle filtrerede data
    all_filtered_distances = [all_filtered_distances; filtered_distance];
    all_filtered_tof = [all_filtered_tof; filtered_tof];
end

% Plot alle punkter
figure;
scatter(all_filtered_distances, all_filtered_tof, 'o'); % Punktplot
hold on;

% Tilføj en lineær regression
p = polyfit(all_filtered_distances, all_filtered_tof, 1); % Lineær regression
x_fit = linspace(min(all_filtered_distances), max(all_filtered_distances), 100);
y_fit = polyval(p, x_fit);
plot(x_fit, y_fit, '-k', 'LineWidth', 2); % Regressionslinje

% Tilføj aksetitler og overskrift
xlabel('Distance $cm$', Interpreter='latex');
ylabel('ToF $(\mu s)$', Interpreter='latex'); % Ændret y-akse titel til mikrosekunder
title('Filtrerede TOF vs. Distance');
grid on;
legend('Data', 'Linear Fit', 'Location', 'NorthWest');

axes('position',[.65 .175 .25 .25])
box on
% Filtrer data for zoomet visning
indexOfInterest = (all_filtered_distances >= 190 & all_filtered_distances <= 210) & ...
                  (all_filtered_tof >= 6500 & all_filtered_tof <= 6700);

% Plot det zoomede område
scatter(all_filtered_distances(indexOfInterest), all_filtered_tof(indexOfInterest), 'o');
hold on;

% Tilføj lineær regression i det zoomede område
x_zoom = linspace(190, 210, 50); % Indstil x-interval
y_zoom = polyval(p, x_zoom); % Brug regressionens polynomium
plot(x_zoom, y_zoom, '-k', 'LineWidth', 1.5);
annotation("arrow",[0.65 0.4],[0.32 0.32])

% Juster akserne
xlim([190 210]);
ylim([6500 6700]);
grid on;