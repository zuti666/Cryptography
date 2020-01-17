%Li4_27
tic
p=71593;q=77041;
n=p*q;
fain=(p-1)*(q-1);
e=17573169;
%求逆元
d=2674607171;
% 公开钥为 (e,n) ,私密钥为（d,n）
%% 加密
M=[1612050119,0500230109,2000061518,0013050000];
for i=1:4
c(i) = KuaiSuZhiShu( M(i),e,n )  ;%密文   
end
disp("密文");
disp(c);
%% 解密
for i=1:4
N(i) = KuaiSuZhiShu( c(i),e,n )  ;%密文   
end
disp("解密后");
disp(N);
if(N==M)
    disp("成功")
end
toc