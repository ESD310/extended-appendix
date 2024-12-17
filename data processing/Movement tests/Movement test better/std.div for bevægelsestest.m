% Liste af filstier
filePaths = {
    "C:\Users\rasmu\OneDrive - Aalborg Universitet\General - ESD310\P3 Projekt\Tests\Movement test better\Test1_speed20.log",
    "C:\Users\rasmu\OneDrive - Aalborg Universitet\General - ESD310\P3 Projekt\Tests\Movement test better\Test2_speed40.log",
    "C:\Users\rasmu\OneDrive - Aalborg Universitet\General - ESD310\P3 Projekt\Tests\Movement test better\Test3_speed60.log",
    "C:\Users\rasmu\OneDrive - Aalborg Universitet\General - ESD310\P3 Projekt\Tests\Movement test better\Test4_speed80.log",
    "C:\Users\rasmu\OneDrive - Aalborg Universitet\General - ESD310\P3 Projekt\Tests\Movement test better\Test5_speed100.log"
};

% Liste af hastigheder
speeds = {'speed 20', 'speed 40', 'speed 60', 'speed 80', 'speed 100'};


for fileIdx = 1:length(filePaths)
    data = readtable(filePaths{fileIdx});
    
    % Omdan kolonner til variabler
    X = data.X;
    Y = data.Y;
    Z = data.Z;

    % Juster z-aksen kun for "speed 80"
    if strcmp(speeds{fileIdx}, 'speed 80')
        Z = Z - 4.4;  % Træk 4.4 fra z-koordinaterne
    end

    % Definer linjens start- og slutpunkter
    P1 = [0.05, 1, 0.17];  % Startpunkt (X1, Y1, Z1)
    P2 = [0.05, -1, 0.17]; % Slutpunkt (X2, Y2, Z2)

    % Find linjens retning (vektor mellem P1 og P2)
    line_vector = P2 - P1;

    % Initialiser residualer for hver komponent
    residuals_total = zeros(length(X), 1);

    % Beregn residualer for hver punkt
    for i = 1:length(X)
        % Punktet fra logfilen
        point = [X(i), Y(i), Z(i)];

        % Vektor fra P1 til punktet
        point_vector = point - P1;

        % Projekter punktvektoren på linjens retning
        proj_length = dot(point_vector, line_vector) / norm(line_vector);

        % Find den projicerede punkt på linjen
        projected_point = P1 + proj_length * (line_vector / norm(line_vector));

        % Beregn den totale residual (euclidisk afstand) fra punktet til linjen
        residuals_total(i) = norm(point - projected_point);
    end

    % Beregn total varians og standardafvigelse
    total_variance = var(residuals_total);
    total_std_dev = std(residuals_total);
    total_sum_at_speed = sum(residuals_total);

    % Udskriv resultaterne for den nuværende fil
    disp(['Resultater for fil: ', speeds{fileIdx}]);
    disp(['Total varians: ', num2str(total_variance)]);
    disp(['Total standardafvigelse: ', num2str(total_std_dev)]);
    avg_residual_at_speed = total_sum_at_speed/201;
    disp(['Avg residual ', speeds{fileIdx}, ': ', num2str(avg_residual_at_speed)])
    disp('---------------------------------------------------');
    
end

