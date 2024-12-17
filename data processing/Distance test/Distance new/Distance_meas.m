clear all:
clc

fo_test_190cm = readtable('d190_fo.csv','NumHeaderLines',2);
fo1_test_190cm = readtable('d190_fo1.csv','NumHeaderLines',2);
fo2_test_190cm = readtable('d190_fo2.csv','NumHeaderLines',2);

ao_test_190cm = readtable('d190_ao.csv','NumHeaderLines',2);
ao1_test_190cm = readtable('d190_ao1.csv','NumHeaderLines',2);
ao2_test_190cm = readtable('d190_ao2.csv','NumHeaderLines',2);

%t = tiledlayout(2,1);

%nexttile
%plot(fo_test_190cm.Var1,fo_test_190cm.Var2)
%nexttile
%plot(fo1_test_190cm.Var1,fo1_test_190cm.Var2)
%nexttile
%plot(fo2_test_190cm.Var1,fo2_test_190cm.Var2)


%title('Transducer measurement 190cm')
%xlim([-0.0025 0.0025])
%ylim([0 3.3])
%ylabel('[V]')
%xlabel('[s]')

%test_45cm = readtable('pumsi_45cm.csv','NumHeaderLines',2);
fo_test_85cm = readtable('d85_fo.csv','NumHeaderLines',2);
fo1_test_85cm = readtable('d85_fo1.csv','NumHeaderLines',2);
fo2_test_85cm = readtable('d85_fo2.csv','NumHeaderLines',2);

ao_test_85cm = readtable('d85_ao1.csv','NumHeaderLines',2);
ao1_test_85cm = readtable('d85_ao2.csv','NumHeaderLines',2);
ao2_test_85cm = readtable('d85_ao3.csv','NumHeaderLines',2);

%nexttile
plot(ao_test_85cm.Var1,ao_test_85cm.Var2)
title('Transducer measurement 85cm')
xlim([-0.0025 0.0025])
ylim([0 1.1])
%yline(3.3,label='3.3V')
yline(.99,label='0.99V')
yline(0.15,label='0.15V')
ylabel('[V]')
xlabel('[s]')

%title(t,'Oscilloscope transducer measurement of different distances')

