clear all
close all
clc

M = 300;
N = 400;
l = 1;
k = 2;

%Write the FourierBasisVector2D function witch returns
%an M by N complex matrix that corresponds to the function
%f(m,n) = e^(-2*pi*i(l*m/M+k*n/N)) 
%m is an element of {0,...,M-1}. n is and element of {0,...,N-1}.
V = FourierBasisVector2D(l, k, M, N);

%these two functions will display the generated basis vector.
figure(1)
displayComplexMatrixRealPartPlot(V);
figure(2)
displayComplexMatrixRealPartImage(V);