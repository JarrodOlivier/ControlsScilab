// this examples show how to manage tips by program
x1=linspace(0,1,100)';
y1=x1.^3;
clf();
plot(x1,y1,x1,sinc(10*x1));
e=gce();
p1=e.children(1);//sinc(10*x1)
p2=e.children(2); //x1^3
t=datatipCreate(p1,50);
datatipSetOrientation(t,"lower right")
t=datatipCreate(p1,[0.8 0.5]);
t=datatipCreate(p2,[0.1,0.0]);
t=datatipCreate(p2,[0.8 0.4]);
datatipSetOrientation(t,"upper left")

function str=myfmt(h)
pt = h.data;
str = msprintf('sinc\n%s', sci2exp(round(pt*10)/10))
endfunction
datatipSetDisplay(t,"myfmt")
