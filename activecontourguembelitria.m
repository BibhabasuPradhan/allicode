A1 = imread ('Guembelitria.jpg');
A2 = imread ('G2.jpg');
A3 = imread ('G3.jpg');
A4 = imread ('heterohelix.jpg');
A5 = imread ('rugoglobigerina rugosa.png');
A6 = imread ('pseudoguembelina.jpg');
%converting to grayscale
Gray_1 = rgb2gray(A1);
Gray_2 = rgb2gray(A2);
Gray_3 = rgb2gray(A3);
Gray_4 = rgb2gray(A4);
Gray_5 = rgb2gray(A5);
Gray_6 = rgb2gray(A6);
%Defining the mask to demarcate the outline
mask1 = zeros(size(Gray_1));
mask1(10:end-10,10:end-10)= 1;
mask2 = zeros(size(Gray_2));
mask2(10:end-10,10:end-10)= 1;
mask3 = zeros(size(Gray_3));
mask3(10:end-10,10:end-10)= 1;
mask4 = zeros(size(Gray_4));
mask4(10:end-10,10:end-10)= 1;
mask5 = zeros(size(Gray_5));
mask5(10:end-10,10:end-10)= 1;
mask6 = zeros(size(Gray_6));
mask6(10:end-10,10:end-10)= 1;
%Individual Contouring (Active Contour Model)
B1 = activecontour(Gray_1,mask1,2000);
B2 = activecontour(Gray_2,mask2,2000);
B3 = activecontour(Gray_3,mask3,2000);
B4 = activecontour(Gray_4,mask4,2000);
B5 = activecontour(Gray_5,mask5,2000);
B6 = activecontour(Gray_6,mask6,2000);
%subplots to display output
subplot(2,3,1),imshow(B1),title('Guembelitria1');
subplot(2,3,2),imshow(B2),title('Guembelitria2');
subplot(2,3,3),imshow(B3),title('Guembelitria3');
subplot(2,3,4),imshow(B4),title('heterohelix');
subplot(2,3,5),imshow(B5),title('rugoglobigerina rugosa');
subplot(2,3,6),imshow(B6),title('pseudoguembelina');
%%
figure
subplot(2,3,1),imshow(A1);
subplot(2,3,2),imshow(A2);
subplot(2,3,3),imshow(A3);
subplot(2,3,4),imshow(A4);
subplot(2,3,5),imshow(A5);
subplot(2,3,6),imshow(A6);