function [x_filtered, y_filtered, z_filtered, time_filtered, x_new, y_new, z_new] = MovementDataFilter(data, start_time, end_time)
   
    x_constant = 0.1;
    z_constant = 0.17;
    v = 2/(start_time-end_time);
    % Ekstraher x, y, z kolonnerne
    x = data.X;
    y = data.Y;
    z = data.Z;
    time = data.TIME; % Tid i millisekunder


    % Filtrer data baseret på tidsintervallet
    filtered_indices = time >= start_time & time <= end_time;
    x_filtered = x(filtered_indices);
    y_filtered = y(filtered_indices);
    z_filtered = z(filtered_indices);
    time_filtered = time(filtered_indices); % Tidsvektor for filtrerede data

    numFilteredPoints = length(x_filtered);
% Opret tidsvektor for de nye data
    time_new = linspace(start_time, end_time, numFilteredPoints); % Nye data har samme tidsintervall
    time_s = time_new / 1000; % Konverter tid til sekunder

    % Beregn koordinater for det nye datasæt
    x_new = x_constant * ones(size(time_s)); % x forbliver konstant på 0.0
    y_new = (1+(time_filtered-start_time)*v); % y bevæger sig fra 1 til -1
    z_new = z_constant * ones(size(time_s)); % z forbliver konstant på 0.17


end
