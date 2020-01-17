%多表代换加密算法
function   miwen= DuoBiaoDaiHuanJiaMi(A,B,mingwen)
% A，B为密钥，mingwen是明文
n0=length(A);  %判断密钥A的长度
n1=length(mingwen); %判断明文的长度
%% 将字符转换为数字
m0=zeros(1,length(mingwen)); %m0 用来存放明文对应的数字
abc='abcdefghijklmnopqrstuvwxyz';
for i=1:n1
    for j=1:26
        if(mingwen(i)==abc(j))
            m0(i)=j-1;
        end
    end
end
%% 将数字分组
M= ones(n0,ceil(n1/3)); %M为分组后的明文
p=1;
for i =1:n0:n1
    M(1:n0,p)=m0(i:i+n0-1);
    p=p+1;
end
%%  加密
C = ones(n0,ceil(n1/3)); %C为加密后的密文
for i=1:ceil(n1/3)
    C(1:n0,i)=mod(   ( A*(  M(1:n0,i)  )+B)   ,26);
end
%% 将加密后的数字转化为字符
%将分组后的密文合并
p=1;
for i =1:n0:n1
    mi(i:i+n0-1)=C(1:n0,p);
    p=p+1;
end
miwen='';
for i=1:n1
    for j=1:26
        if mi(i)+1==j
            miwen(i)=abc(j);
        end
    end
end



end