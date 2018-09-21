////ServoLab
//clc()
s = %s
//
////    A
//// ------
////  1+sT
//A = 1
//T = 1
//num = 1+s*T
//
//g = A/num
//gs = syslin("c",g)
//
//gsCL = 1/(1+gs)
//


//Position Control
j = 1

for (T = 0:0.2:1)
    gs2 = syslin("c", 1/(s*(1+s*T)))
    gs2CL = 1/(1+gs2)
    subplot(3,2,j)
//    evans(gs2CL)
    evans(gs2)
    j = j+1
    le = string(T)
    hl=legend("T=",le);
end
