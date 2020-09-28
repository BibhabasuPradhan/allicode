%To find the average age of students taller than 5ft in a class of size n
%It displays heights and ages of all the students satisfying this criteria
b= input('enter ages of students');
d= input('enter heights of students in ft and inches');
sel_ages=[];
sel_hts=[];
for i= 1:length(b)
    if d(i)> 5
        sel_ages = [sel_ages b(i)];
        sel_hts = [sel_hts d(i)];
    end
end
disp('the selected ages and heights are: ');
for i= 1:length(sel_ages)
    disp(['Age ' num2str(sel_ages(i)) ' Height ' num2str(sel_hts(i))]);
    
    
end

    
