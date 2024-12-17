clear all:
clc

data5hz = readmatrix('5HzTime.log');
data6hz = readmatrix('6Hz.log');
data7hz = readmatrix('7Hz.log');
data8hz = readmatrix('8Hz.log');


Frequency5hz = 601/data5hz(end,6)*1000; %Baudrate = 2000; Small delay = 150; Start delay = 500;
Frequency6hz = 601/data6hz(end,6)*1000; %Baudrate = 2000; Small delay = 100; Start delay = 400;
Frequency7hz = 601/data7hz(end,6)*1000; %Baudrate = 2000; Small delay = 70; Start delay = 350;
Frequency8hz = 601/data8hz(end,6)*1000; %Baudrate = 3000; Small delay = 70; Start delay = 300;

% Store frequencies in an array for easy plotting
frequencies = [Frequency5hz, Frequency6hz, Frequency7hz, Frequency8hz];

% Labels for the x-axis
labels = {'5 Hz', '6 Hz', '7 Hz', '8 Hz'};

% Create a bar plot
figure;
bar(frequencies);
set(gca, 'XTickLabel', labels); % Set the x-axis labels
xlabel('Frequency Data');
ylabel('Calculated Frequency (Hz)');
title('Calculated Frequencies for Different Data Sets');
grid on;

