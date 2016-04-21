clear
close all
load datatraffic.mat
video = traffic(:,1);
file_transfers = traffic(:,2);
web = traffic(:,3);

ax1 = subplot(2, 1, 1)
b1 = bar(years, [video, file_transfers, web], 'grouped');
b1(1).FaceColor = 'red'
b1(2).FaceColor = 'blue'
b1(3).FaceColor = 'black'
title('Datatraffic Forecast');
xlabel('Years');
ylabel('Traffic [petabyte]');
legend('Video', 'File transfers', 'Web');
legend('Location', 'NorthWest');
ax1.XTick = years.';

ax2 = subplot(2, 1, 2)
b2 = bar(years, [video, file_transfers, web], 'stacked');

b2(1).FaceColor = 'red'
b2(2).FaceColor = 'blue'
b2(3).FaceColor = 'black'
title('Datatraffic Forecast');
xlabel('Years');
ylabel('Traffic [petabyte]');
legend('Video', 'File transfers', 'Web');
legend('Location', 'NorthWest');
ax2.XTick = years.';