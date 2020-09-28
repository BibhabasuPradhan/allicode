%Code to check unitary diagonalizationof a square normal matrix as input
%19GG05006
A = [1 1 0; 0 1 1; 1 0 1]; %The given matrix
[B,C]=eig(A);              %stores eigen vector in B and eigen values in C
if C==B'*A*B               %checks the unitary diagonalization condition
    s=1;
else                       %logical operation
    s=0;
end
if s==1
    disp('It is a normal matrix-unitarily diagonizable')  %displays whether it is a normal matrix or not
else
    disp('It is not a normal matrix')
end
disp(C)
 