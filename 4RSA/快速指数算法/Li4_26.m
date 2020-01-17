%% RSA产生密钥
tic
p=7;q=17;
n=p*q;
fain=(p-1)*(q-1);
e=5;
%求逆元
[d2,d]=NiYuan(fain,e);
% 公开钥为 (e,n) ,私密钥为（d,n）
%% 
tic
mingwen = 19;  %明文
% 加密 
disp("密文")
c = KuaiSuZhiShu(mingwen,e,n) ;%密文
disp(c)
% 解密
disp("解密后")
m1 = KuaiSuZhiShu(c,d,n);
disp(m1)
toc
