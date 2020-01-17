%% test
MingWen='0000000100100011010001010110011110001001101010111100110111101111'; %明文  16进制的'0123456789ABCDEF'
MiYao = '0001001100110100010101110111100110011011101111001101111111110001'; %加密算法的密钥 16进制"133457799BBCDFF1";
disp('密文（二进制）');
MiWen=DESJiaMi(MingWen) %加密产生的密文
o='';  %将密文由数字矩阵转化为字符串
for i=1:64
    o=strcat(o,num2str(MiWen(i)));
end
disp('解密后的原文');
YuanWen=DESJieMi(o)%解密产生原文
pp='';  %将解密产生原文由数字矩阵转化为字符串
for i=1:64
    pp=strcat(pp,num2str(YuanWen(i)));
end

if ( MingWen==pp )  %当解密后的原文与明文相同时
    disp('算法成功');
else 
    disp('算法失败');
end