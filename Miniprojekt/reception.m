close all
clear
[x0, y0] = meshgrid(0:10:1000);
x1 = 0;
y1 = 0;
P = 1;
K = 4;
sigma = 10^(-11.2);
R = data_rate(signal_noise_ratio(distance(x0, y0, x1, y1), P, sigma, K));
mesh(x0, y0, R./10e+6);
xlabel('X-position [m]');
ylabel('Y-position [m]');
zlabel('Data rate |Mbit/s]');
xstart = 0;
xend = 1000;
ystart = 0;
yend = 1000;
zstart = 0;
zend = 20;
%axis([xstart xend ystart yend zstart zend])