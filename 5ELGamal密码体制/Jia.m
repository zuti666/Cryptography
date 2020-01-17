%有限域椭圆曲线上的运算
%Ep(a,b),P(X1,Y1),Q(X2,Y2)
function [X3,Y3]=Jia(p,X1,Y1,X2,Y2)
P=[X1,Y1];
Q=[X2,Y2];
if(P==Q)
    lamd = (3*X1^2+a)/2*Y1;
else
    lamd = (Y2-Y1)/(X2-X1);
end
if(lamd<0)
    
end
X3=mod(lamd^2 -X1 -X2,p);
Y3=mod(lamd*(X1-X2)-Y1,p);
end