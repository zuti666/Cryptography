function  mingwen=DuoBiaoDaiHuanJieMi(A1,B,miwen)

% A1为密钥A的逆矩阵，B为密钥，miwen是密文
n0=length(A1);  %判断密钥A的逆矩阵的长度
n1=length(miwen); %判断密文的长度
%% 将字符转换为数字
m0=zeros(1,length(miwen)); %m0 用来存放密文对应的数字
abc='abcdefghijklmnopqrstuvwxyz';
for i=1:n1
    for j=1:26
        if(miwen(i)==abc(j))
            m0(i)=j-1;
        end
    end
end
%% 将数字分组
M= ones(n0,ceil(n1/3)); %M为分组后的密文
p=1;
for i =1:n0:n1
    M(1:n0,p)=m0(i:i+n0-1);
    p=p+1;
end
%% 解密
C = ones(n0,ceil(n1/3)); %C为解密后的明文
for i=1:ceil(n1/3)
    C(1:n0,i)=mod(A1*(M(1:n0,i)-B),26);
end
%% 将加密后的数字转化为字符
%将分组后的密文合并
p=1;
for i =1:n0:n1
    mi(i:i+n0-1)=C(1:n0,p);
    p=p+1;
end
mingwen='';
for i=1:n1
    for j=1:26
        if mi(i)+1==j
            mingwen(i)=abc(j);
        end
    end
end
end