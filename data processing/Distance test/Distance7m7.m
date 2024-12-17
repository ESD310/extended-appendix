clear all:
clc

distance = readtable('77m_.csv','NumHeaderLines',2);


plot(distance.Var1,distance.Var2)