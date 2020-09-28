str = input('Provide a string for checking ','s'); %Asks the user to input a string
str_l = length(str); %finds the length of string and stores it in a variable
h = 0;               %initializes a counter
for i=2:str_l        %loop to scan through the provided string starting from second element which is actually a space
    if strcmp(str(i),' ') %checks whether the i value is a space or not
        h=h+1;            %if its a space, then counter increases by 1
    end
end
disp(['This sentence has ' num2str(h+1) ' words']) %the string would always have 1 word more than the number of spaces