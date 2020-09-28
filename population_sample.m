%% Statistics tutorial for Computational Geophysics
x = normrnd(0,1,1000000,1);
subplot(1,2,1)
hist(x,100)
u1 = randi([1,1e6],100,1);
u2 = randi([1,1e6],100,1);
u3 = randi([1,1e6],100,1);
s1_x = x(u1);
s2_x = x(u2);
s3_x = x(u3);
h_s = subplot(1,2,2);
hist(s1_x,10);
figure
hist([s1_x,s2_x,s3_x],10);
mean_s1 = mean(s1_x);mean_s2 = mean(s2_x);mean_s3 = mean(s3_x);
mean_s = mean([mean_s1,mean_s2,mean_s3]);

