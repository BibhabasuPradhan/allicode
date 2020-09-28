%%
t = input('thickness of sediment within section m occupied by species x: ');
f = input('number of facies in which species x occurs: ');
g = input('number of sections or localities in which species x occurs: ');
totalthickness_diffcores = input('Total thickness of m: ');
totalfacies_diffcores = input('Total number of facies: ');
totalsections = input('Total number of sections or localities: ');
a = size(t);
b = size(f);
c = size(g);

FaciesIndependence = zeros(1,b(2));
GeographicPersistence = g/totalsections;
VerticalRange = zeros(1,a(2));

for i = 1:a(2)
    VerticalRange(i) = t(i)/totalthickness_diffcores(i);
    FaciesIndependence(i) = f(i)/totalfacies_diffcores(i);
    

end
% for Biostratigraphic Rating (Relative Biostratigraphical Value)-
%Three types of RBV -RBV1,RBV2,RBV3 (RBV3 is mainly used for DSDP logs)
x = size(FaciesIndependence);
y = size(VerticalRange);
RBV1 = zeros(1,x(2));
RBV2 = zeros(1,x(2));
RBV3 = zeros(1,x(2));
for j = 1:x(2)
    RBV1(j) = FaciesIndependence(j)*(1 - VerticalRange(j)) + (1 - FaciesIndependence(j))*GeographicPersistence;
    RBV2(j) = (FaciesIndependence(j)*(1 - VerticalRange(j)) + (1 - VerticalRange(j))*GeographicPersistence)/2;
    RBV3(j) = 1 - VerticalRange(j);
end
disp(RBV1)
disp(RBV2)
disp(RBV3)
disp(VerticalRange)
disp(FaciesIndependence)
disp(GeographicPersistence)
