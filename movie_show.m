figure
x=0:0.01*pi:2*pi;
y=sin(x);
len_x = length(x);
witerObj=VideoWriter('sin_video.avi');  
open(writerObj);  
for k=1:len_x
    plot(x(1:k),y(1:k));
    xlabel('t')
    ylabel('sin(t)')
    hold on 
    plot(x(k), y(k), 'o')
    axis([0 2*pi -1.1 1.1]);
    frame = getframe;           
    writeVideo(writerObj,frame); 
    hold off
end 
close(writerObj);
