A = imread('lena.jpg');
B = rgb2hsv(A);
V = B(:,:,3);
V_equa = histeq(V);
subplot(1,2,1),imshow(V);
subplot(1,2,2),imshow(V_equa);
B(:,:,3)= V_equa;
C = hsv2rgb(B);
figure, subplot(1,2,1),imshow(A);
subplot(1,2,2),imshow(C);
