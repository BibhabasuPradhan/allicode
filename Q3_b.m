%This is a matlab code to find the sum of an array of arbitrary length
%19GG05006
n = input('Input Array'); %asks user to input array
a = length(n); %stores the length of array in a variable
s=0;           %initializes a variable to store the sum
for i=1:a      %loop to scan through the length of the vector
    s=s+n(i);  %operation to find the sum of all the elements
end
    disp(s)    %displays the sum