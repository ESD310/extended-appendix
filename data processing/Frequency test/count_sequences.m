function [correct_count, incorrect_count] = count_sequences(data)
    % Læs data fra filen
    data = data;

    % Ekstraher ID kolonnen
    ID = data.ID;

    % Initialiser tællere for korrekt og fejlagtig sekvens
    correct_count = 0;
    incorrect_count = 0;

    % Loop gennem dataene for at finde sekvenserne
    i = 1;  % Startindeks
    while i <= length(ID) - 2  % Vi skal mindst have tre elementer for at danne en sekvens
        if ID(i) == 0 && ID(i+1) == 1 && ID(i+2) == 2
            correct_count = correct_count + 1;
            i = i + 3;  % Hop tre trin frem, da vi har fundet en korrekt sekvens
        elseif ID(i) == 0 && ID(i+1) == 1 || ID(i+1) ~=1 && ID(i+2) ~= 2
            incorrect_count = incorrect_count + 1;
            % Når sekvensen er brudt, hop videre indtil vi finder et nyt ID=0
            while i <= length(ID) && ID(i) ~= 0
                i = i + 1;
            end
        else
            i = i + 1;  % Fortsæt til næste element
        end
    end
end
