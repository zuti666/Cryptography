% p134 习题13题 素数 p = 71 , 本原根 g=7
%(1) 公开钥Yb = 3 ,加密的明文消息为30,发送方选取的随机整数k = 2
%% 加密过程
tic
p=71 ;g=7; %素数 p = 71 , 本原根 g=7
y=3; %公开钥Yb = 3
M=30; %加密的明文消息为30
k=2; %发送方选取的随机整数k = 2
C1 = mod(g^k,p);
C2 = mod(y^k * M,p);
C=[C1,C2]
toc