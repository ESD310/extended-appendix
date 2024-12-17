function plotMovementData(x_filtered, y_filtered, z_filtered, time_filtered, x_new, y_new, z_new, speed, subplot_idx)
    % Opret subplot og plot de filtrerede data vs. de beregnede real-data
    subplot(3, 2, subplot_idx); % Indsæt plot i den ønskede position
    scatter3(x_filtered, y_filtered, z_filtered, 20, time_filtered, 'filled'); % Gør punkterne mindre
    hold on;
    scatter3(x_new, y_new, z_new, 20, time_filtered, 'filled'); % Gør punkterne mindre
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    title(['Test ' num2str(speed) ' - Speed ' num2str(speed)]);
    colormap('jet');
    colorbar;

    xlim([-0.1, 0.3]);
    ylim([-1.5, 1.5]);
    zlim([0, 1]);

    grid on;
end
