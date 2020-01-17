%% 测试求逆元函数NiYuan.m
%求（1769,550）的最大公因子及逆元

[y1,y2]=NiYuan(1769,550);
disp("最大公因子是");
y1
if (y2~=0)
  disp("逆元是");
  y2
else
    disp("逆元不存在");
end