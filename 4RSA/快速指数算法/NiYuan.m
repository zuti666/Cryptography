function [y1,y2] = NiYuan(a,b)
if(a<b)
    c=b;
    b=a;
    a=c;
end
s=a;
 X=[1,0,a];
 Y=[0,1,b];
while(Y(3)~=0 && Y(3)~=1)
Q = floor(X(3)/Y(3));
T=[X(1)-Q*Y(1),X(2)-Q*Y(2),X(3)-Q*Y(3)];
X=Y;
Y=T; 
end
if(Y(3)==0)
    y1=X(3);
    y2=0;
end
while( Y(2)<= 0)
      Y(2)=Y(2)+s;
end
if(Y(3)==1)
    y1=Y(3);
    y2=Y(2);  
end



end