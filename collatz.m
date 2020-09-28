%This is a program to verify whether the end result of a Collatz conjecture
%is 1 or not
n=input('Input number whose collatz conjecture has to be found');
seq(1)=n;
i=0;
while seq(i+1)~=1
    if mod(seq(i+1),2)==0
        seq(i+2)= seq(i+1)/2;
    else
        seq(i+2)= 3*seq(i+1)+1;
    end
    i=i+1;
end
v=length(seq);
if seq(v)==1
    disp('it is a collatz conjecture');
else
    disp('not a collatz conjecture');
end

