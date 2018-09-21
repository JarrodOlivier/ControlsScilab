

//Below is the system identification and design
s = %s

A = 17.09
T = 11.92643
h_s = 1//0.86
//Proportional Controller
//k_s = 1 //some rndm number

//Lead Controller
k_s = 2.8*(s+0.3986)/(s+3.5868)


gN = A
gD = s*(1+s*T)
g_s = gN/gD

//plzr(g_s)


g_sCL = 2.5*(g_s*k_s)/(1+g_s*h_s*k_s)


g = syslin('c',g_sCL)

t = linspace(0,50,1000)
y1 = csim('step',t,g)

plot(t,y1,'r')
//plot(t,1.*(t./t),'r')

//plzr(g_sCL)
//
//x = linspace(-5,2,100)
//plot(-0.1676948*[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],-10:10,'r')
//plot(x,tan(acos(0.55))*x,'r')
//plot(x,-tan(acos(0.55))*x,'r')
//evans(g_sCL)
//grid()













