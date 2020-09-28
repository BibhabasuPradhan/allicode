%% Code for examining the central limit theorem
% First choose independent and identically distributed samples from a
% population
N = 100000;
choose_dist = 2; % If choose dist == 1, choose normal, if choose_dist == 2, choose uniform
choose_samp = 1; % If choose_samp == 1, SRSWR, if choose_samp == 2, SRSWOR
if choose_dist == 1 % Normal
    mu = 0;
    sigma = 10;
    x = normrnd(mu,sigma,N,1); % From normal distribution
    [counts_pop,centers_pop] = hist(x,200); % Plot the population
    bin_width = centers_pop(2)-centers_pop(1); % Find the bin widht
    counts_norm_pop = counts_pop/(sum(counts_pop)*bin_width); % Convert count to probability density
    bar(centers_pop,counts_norm_pop); % Plot bar 
    pd = fitdist(x,'Normal'); % Fit the population
    x_dist = -4*sigma:0.01:4*sigma; % Specify x-limits to plot the fit
    y = pdf(pd,x_dist); % Generate PDF
    hold on
    plot(x_dist,y,'r-','LineWidth',2) % Plot PDF
    set(gca,'Fontsize',20)
    xlabel('$$ x $$','Interpreter','Latex','Fontsize',20)
    ylabel('$$ p(x)$$','Interpreter','Latex','Fontsize',20)
elseif choose_dist == 2
    a = 2;
    b = 4;
    x = (b-a)*rand(N,1)+a; % From uniform distribution between a and b
    mu = (a+b)/2;
    sigma = (b-a)/sqrt(12);
    [counts_pop,centers_pop] = hist(x,200); % Plot the population
    bin_width = centers_pop(2)-centers_pop(1); % Find the bin widht
    counts_norm_pop = counts_pop/(sum(counts_pop)*bin_width); % Convert count to probability density
    bar(centers_pop,counts_norm_pop); % Plot bar
    set(gca,'Fontsize',20)
    xlabel('$$ x $$','Interpreter','Latex','Fontsize',20)
    ylabel('$$ p(x)$$','Interpreter','Latex','Fontsize',20)
else
    error('wrong distribution choice: see line 5')
end
n = 100; % Sample size
nsamp = 1000; % How many samples to choose, note we do not need all possible samples
samp_mean = zeros(nsamp,1); % Initiate vector for sample mean
figure
if choose_samp == 1
    % SRSWR on the population
    for i = 1:nsamp
        u = randi(N,n,1);
        samp = x(u);
        samp_mean(i) = sum(samp)/n;
    end
elseif choose_samp == 2
    % SRSWOR on the population
    for i = 1:nsamp
        u = randi(length(x),n,1);
        samp = x(u);
        x(u) = [];
        samp_mean(i) = sum(samp)/n;
    end
else
     error('wrong sampling choice: see line 6')
end    
[counts,centers] = hist(samp_mean,20);
bin_width = centers(2)-centers(1);
counts_norm = counts/(sum(counts)*bin_width);
bar(centers,counts_norm);
hold on
x = min(centers):0.01:max(centers);
y = 1/(sqrt(2*pi/n)*sigma)*exp(-0.5*(x-mu).^2*n/sigma^2);
plot(x,y,'r-','linewidth',2)
set(gca,'Fontsize',20)
xlabel('$$ \bar{X} $$','Interpreter','Latex','Fontsize',20)
ylabel('$$ p(\bar{X})$$','Interpreter','Latex','Fontsize',20)
    
    
    
