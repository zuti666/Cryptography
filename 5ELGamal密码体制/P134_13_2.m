%p134页 习题13（2） 素数 p = 71 , 本原根 g=7
% k未知 ，明文M=30，密文C=[59,C2] ,求C2
% C1 = g^k mod p
tic
p=71 ;g=7; %素数 p = 71 , 本原根 g=7
y=3; %公开钥Yb = 3
M=30;%明文M=30
for i = 1:100
    C(i)= mod(g^i,p);
    if(C(i)==59)
        k=i;
    end
end
k0 
C2 =mod(y^k *M,p)
toc