clear
close all
load datatraffic.mat
traffic = traffic/9.7;
video = traffic(:,1);
file_transfers = traffic(:,2);
web = traffic(:,3);
total = video + file_transfers + web;
ax = gca;

plot(years, total, '-m', years, video, '-.b', years, web, '--r', years, file_transfers, ':k');
title('Datatraffic Forecast');
xlabel('Years');
ylabel('Traffic [gigabyte]');
legend('Total', 'Video', 'Web', 'File transfers');
legend('Location', 'NorthWest');
ax.XTick = years.';