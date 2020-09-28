% First, generate a set of ellipses with some R_i and random orientations
% between +90 and -90 from the horizontal
%SIMPLE_SHEAR

n = 16; % How many ellipses?
r_i = 2.0; % What is initial axial ratio
phi = linspace(-pi/2,pi/2,n);
centers_x = 4:4.0:16.0;
centers_y = 4:4.0:16.0;
centers   = [centers_x' centers_y(1)*ones(4,1);centers_x' centers_y(2)*ones(4,1); ...
    centers_x' centers_y(3)*ones(4,1);centers_x' centers_y(4)*ones(4,1)];
ellipse_mat_x = zeros(100,n);
ellipse_mat_y = zeros(100,n);
for i = 1:n
    R = [cos(phi(i)) sin(phi(i));-sin(phi(i)) cos(phi(i))];
    xi = linspace(0,2*pi,100);
    b = 1.0;
    a = r_i*b;
    for j = 1:100
        X = centers(i,:)' +  R*[a*cos(xi(j));b*sin(xi(j))];
        ellipse_mat_x(j,i) = X(1);
        ellipse_mat_y(j,i) = X(2);
    end
    plot(ellipse_mat_x(:,i),ellipse_mat_y(:,i));
    hold on
end
%PURE_SHEAR
figure 
r_i = 2.0;
n = 16; % How many ellipses?
phi = linspace(-pi/2,pi/2,n);
centers_x = 4:4.0:16.0;
centers_y = 4:4.0:16.0;
centers   = [centers_x' centers_y(1)*ones(4,1);centers_x' centers_y(2)*ones(4,1); ...
    centers_x' centers_y(3)*ones(4,1);centers_x' centers_y(4)*ones(4,1)];
ellipse_mat_x = zeros(100,n);
ellipse_mat_y = zeros(100,n);
for i = 1:n
    R = [cos(phi(i)) sin(phi(i));-sin(phi(i)) cos(phi(i))];
    d = -1.0;
    xi = linspace(0,2*pi,100);
    b = 0.75;
    a = r_i*b;
    for j = 1:100
        X = centers(i,:)' +  [d 0; 0 1/d]*R*[a*cos(xi(j));b*sin(xi(j))];
        ellipse_mat_x(j,i) = X(1);
        ellipse_mat_y(j,i) = X(2);
    end
    plot(ellipse_mat_x(:,i),ellipse_mat_y(:,i));
    hold on
end
figure 
r_i = 2.0;
n = 16; % How many ellipses?
phi = linspace(-pi/2,pi/2,n);
centers_x = 4:4.0:16.0;
centers_y = 4:4.0:16.0;
centers   = [centers_x' centers_y(1)*ones(4,1);centers_x' centers_y(2)*ones(4,1); ...
    centers_x' centers_y(3)*ones(4,1);centers_x' centers_y(4)*ones(4,1)];
ellipse_mat_x = zeros(100,n);
ellipse_mat_y = zeros(100,n);
for i = 1:n
    R = [cos(phi(i)) sin(phi(i));-sin(phi(i)) cos(phi(i))];
    d = -1.0;
    xi = linspace(0,2*pi,100);
    b = 0.5;
    a = r_i*b;
    for j = 1:100
        X = centers(i,:)' +  [d 0; 0 1/d]*R*[a*cos(xi(j));b*sin(xi(j))];
        ellipse_mat_x(j,i) = X(1);
        ellipse_mat_y(j,i) = X(2);
    end
    plot(ellipse_mat_x(:,i),ellipse_mat_y(:,i));
    hold on
end
