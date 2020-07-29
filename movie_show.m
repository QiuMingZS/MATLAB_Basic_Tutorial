figure
s=0.2;x1=0;
nframes=50;
for k=1:nframes
    x1=x1+s;
    x=0:0.01:x1;
    y=sin(x);
    plot(x,y);
    axis([0 2*pi -1 1]);
    grid off;
    M(k)=getframe;
end                
movie(M,3);