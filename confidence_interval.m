%% Confidence intervals
mu = 5;
sigma = 2;
N = 1e5;
n = 20;
n_samp = 500;
population = normrnd(mu,sigma,N,1);
%% First check the transformation from normal to standard normal distribution
population_std_norm = (population-mu)/sigma;
[counts_pop,centers_pop] = hist(population_std_norm,200); % Plot the population
bin_width = centers_pop(2)-centers_pop(1); % Find the bin widht
counts_norm_pop = counts_pop/(sum(counts_pop)*bin_width); % Convert count to probability density
bar(centers_pop,counts_norm_pop); % Plot bar
set(gca,'Fontsize',20)
xlabel('$$ x $$','Interpreter','Latex','Fontsize',20)
ylabel('$$ p(x)$$','Interpreter','Latex','Fontsize',20)
%% SRSWR on the population
sample_mean = zeros(n_samp,1);
sample_var  = zeros(n_samp,1);
figure
for i = 1:n_samp
    samp_index = randi(N,n,1);
    sample = population(samp_index);
    sample_mean(i) = mean(sample);
    sample_var(i) = 1/(n-1)*sum((sample-sample_mean(i)).^2);
end
[counts,centers] = hist(sample_mean,20);
bin_width = centers(2)-centers(1);
count_pdf = counts/(sum(counts)*bin_width);
bar(centers,count_pdf)

%% z- and t-confidence intervals on the sample mean
z_level = norminv(0.025);
t_level = tinv(0.85,n_samp);
pci = zeros(n_samp,1);
figure
for i = 1:n_samp
    pci(i) = z_level*sample_var(i)/sqrt(n);
end
ind_plot = 5;
l = line([sample_mean(ind_plot) sample_mean(ind_plot)],[0,1]);
set(l,'color','r','linewidth',2);
l_l = line([sample_mean(ind_plot)-pci(ind_plot) sample_mean(ind_plot)-pci(ind_plot)],[0,1]);
l_r = line([sample_mean(ind_plot)+ pci(ind_plot) sample_mean(ind_plot) + pci(ind_plot)],[0,1]);
set([l_l l_r],'color','r','linewidth',1,'linestyle','--');
l_mu = line([mu mu],[0 1]);
set(l_mu,'color','k','linewidth',2);