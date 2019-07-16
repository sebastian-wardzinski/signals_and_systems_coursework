function [ fourierSeriesCoeficients ] = DiscreteTimeFourierSeries2D( timeMatrix )
    %preallocate the transform matrix
    [M,N] = size(timeMatrix);
    fourierSeriesCoeficients = zeros(M,N);
    
    for l = 1 : N %loop through the row requencies
        for k = 1 : M %loop through the column frequencies
            %Calculate the inner product of timeMatrix onto the Fourier
            %basis vector with row frequency l and column frequency k.
            
            %This Fourier basis vector can be obtained by calling
            %FourierBasisVector2D( l, k, M, N ).
            
            %In order to calculate the inner product you may want to use
            %MATLAB's vector functionality. If you aren't comfortable with
            %this, just use two for loops.
            
            %You will need to use the conj() function
            
            %WRITE YOUR CODE HERE
            V = FourierBasisVector2D(l-1,k-1,M,N);
            
            temp_prod = timeMatrix.*conj(V);
            
            fourierSeriesCoeficients(k, l) = sum(temp_prod(:));
            
%             for p = 1: M
%                 temp = timeMatrix(p,conj(l))*V(p,conj(k));
        end
    end
    