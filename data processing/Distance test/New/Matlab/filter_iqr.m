function [filtered_distance, filtered_tof] = filter_iqr(distance, tof, target_distance)
    % Filtrer TOF-data baseret på IQR for en specifik distance
    
    % Udvælg data for den ønskede distance
    mask = (distance == target_distance);
    tof_subset = tof(mask);
    
    % Beregn IQR
    q25 = prctile(tof_subset, 25); % 25% percentilen
    q75 = prctile(tof_subset, 75); % 75% percentilen
    iqr_val = q75 - q25;           % Interquartile range
    
    % Definér outlier-grænser
    lower_bound = q25 - 1.5 * iqr_val;
    upper_bound = q75 + 1.5 * iqr_val;
    
    % Identificer og fjern outliers
    inlier_mask = (tof_subset >= lower_bound) & (tof_subset <= upper_bound);
    filtered_tof = tof_subset(inlier_mask);
    filtered_distance = distance(mask);
    filtered_distance = filtered_distance(inlier_mask);
end
