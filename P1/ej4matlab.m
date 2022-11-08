clear all; close all; clc
addpath('../../funciones');

dt = 1e-2;
t = -1:dt:1;
x = cajon(t);

plotCompleto([-1 1 -0.5 1.5], 't', 'Amplitud', 'Gráfico de una SVIC', 25, 'm*-', 1.5, t, x);

