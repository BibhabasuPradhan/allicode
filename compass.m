%To show a compass with an arrow pointed in the direction of a vector

u = [3;4];
theta = 0:0.01:2*pi;
v = [cos(theta) cos(pi/2-theta)];
    x= u*v;
    compass(u,v)
    box on
    axis square