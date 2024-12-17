function plot_movement_data(data, start_time, end_time, title_str, subplot_pos)
    % Filtrering af data
    [x_filtered, y_filtered, z_filtered, time_filtered, x_new, y_new, z_new] = MovementDataFilter(data, start_time, end_time);

    % Plot i en subplot (gitter)
    subplot(2, 3, subplot_pos);
    hold on;
    
    % Plot de filtrerede og nye punkter
    plot3(x_filtered, y_filtered, z_filtered, 'bo', 'MarkerFaceColor', 'b'); % Filtrerede punkter
    plot3(x_new, y_new, z_new, 'ro', 'MarkerFaceColor', 'r'); % Nye punkter
    
    % Plot linjer mellem filtrerede og nye punkter
    for i = 1:length(x_filtered)
        plot3([x_filtered(i), x_new(i)], [y_filtered(i), y_new(i)], [z_filtered(i), z_new(i)], 'k-');
    end
    
    % Titel og etiketter
    title(title_str);
    xlabel('X'); ylabel('Y'); zlabel('Z');
    
    % Gitter og akseindstillinger
    grid on;
    axis equal;
    view(3); % 3D visning

    % Sæt de samme grænser for alle plottene
    xlim([-0.1, 0.3]);
    ylim([-1.5, 1.5]);
    zlim([0, 1]);
    
    hold off;
end
