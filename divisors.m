%This is a program to find the divisors of a number N.
%Divisors are going to be saved in the vector format.
N= input('Input number');
div_v = [];
d = 1;
while d < N/2 + 1
    if mod(N,d)==0
        div_v = [div_v d];
    end
    d= d+1;
    
end
div_v= [div_v,N];
disp(div_v)

