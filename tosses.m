 % To simulate n consecutive tosses of a coin
% Output should be displayed as a string

x = rand(1,10);              %assign a vector
t=0;h=0;                     %initialise the counters to 0
for i= 1:10                  %start for loop
    x= rand;
    if x>0.5
       h= h+1;               %counter iterates
       disp('H');            %displays H
    else
        t=t+1;
        disp('T');           %displays T
    end
end
