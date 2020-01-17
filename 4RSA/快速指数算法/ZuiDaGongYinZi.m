function e=ZuiDaGongYinZi(a,b)
%
X=a; Y=b;
while(Y~=0 && Y~=1)
    R=mod(X,Y);
    X=Y;
    Y=R;  
end

if (Y==0)
    e=X;
end
if (Y==1)
    e=Y;
end



end



