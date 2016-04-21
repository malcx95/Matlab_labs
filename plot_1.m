clear
close all
load datatraffic.mat
video = traffic(:,1);
file_transfers = traffic(:,2);
web = traffic(:,3);

ax = gca;

plot(years, video, 'blue', years, file_transfers, 'red', years, web, 'black');
title('Datatraffic Forecast');
xlabel('Years');
ylabel('Traffic [petabyte]');
legend('Video', 'File transfers', 'Web');
legend('Location', 'NorthWest');
ax.XTick = years.';