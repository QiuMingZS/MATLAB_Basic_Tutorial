clear,clc
x = 0:0.01*pi:2*pi;
y = sin(x);
len_x = length(x);
writerObj = VideoWriter('sin_video.avi');  
open(writerObj);  
figure
for k=1:len_x
    plot(x(1:k), y(1:k));
    xlabel('x')
    ylabel('sin(x)')
    hold on 
    plot(x(k), y(k), 'o')
    axis([0 2*pi -1.1 1.1]);
    frame = getframe;           
    writeVideo(writerObj,frame); 
    hold off
end 
close(writerObj);
