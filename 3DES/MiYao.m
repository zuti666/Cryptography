function K=MiYao()
%密钥产生函数
MiYao = '0001001100110100010101110111100110011011101111001101111111110001'; %加密算法的密钥
%%
%对密钥进行置换选择
Miyao_a = [ 57 49 41 33 25 17 9;
            1  58 50 42 34 26 18;
            10 2 59 51 43 35 27 ;
            19 11 3 60 52 44 36;
            63 55 47 39 31 23 15;
            7 62 54 46 38 30 22;
            14 6 61 53 45 37 29;
            21 13 5 28 20 12 4;];  %密钥置换矩阵        
MiyaoZhiHuan0 = zeros(8,7);  %矩阵存储进行初始置换后的数字矩阵

    for j = 1:8
        for m = 1:7          
                MiyaoZhiHuan0(j,m) = str2double( MiYao ( Miyao_a(j,m)  ) );                 
        end       
    end


%% 将置换后的矩阵划分为左右两侧
C0 = [MiyaoZhiHuan0(1,1:7),MiyaoZhiHuan0(2,1:7),MiyaoZhiHuan0(3,1:7),MiyaoZhiHuan0(4,1:7)];
D0 = [MiyaoZhiHuan0(5,1:7),MiyaoZhiHuan0(6,1:7),MiyaoZhiHuan0(7,1:7),MiyaoZhiHuan0(8,1:7)];
%%  生成16个密钥
K = zeros(16,48);
MiYao_c = [1 1 2 2 2 2 2 2 1 2 2 2 2 2 2 1];%左循环移位位数表
Kb2 = zeros(8,6);  %进行置换选择-2 后产生的第1轮的子密钥
for  s = 1:16
 %[C1,D1] = YiWei(C0,D0,s);  %循环移位
zuoyiweishu = MiYao_c(s); 
C1 =[ C0(1+zuoyiweishu:28),C0(1:zuoyiweishu) ];
D1 =[ D0(1+zuoyiweishu:28),D0(1:zuoyiweishu) ];
 
 
 
 Mc1 = [C1,D1] ;         %置换选择2的输入
 C0 = C1;
 D0 = D1;
 %% 置换选择2
 MiYao_b = [14 17 11 24  1   5 ;
          3   28 15 6  21   10;
          23  19 12 4 26  8;
          16  7  27 20 13 2;
          41  52 31 37 47 55;
          30  40 51 45 33 48;
          44 49 39 56 34 53;
          46 42 50 36 29 32;]; %置换选择-2
 
 
    for j = 1:8
        for m = 1:6 

                Kb2(j,m) = Mc1(  MiYao_b(j,m)  );
          
        end
    end
 
 
 
 K(s,1:48) = [Kb2(1,1:6),Kb2(2,1:6),Kb2(3,1:6),Kb2(4,1:6),Kb2(5,1:6),Kb2(6,1:6),Kb2(7,1:6),Kb2(8,1:6)]; %将矩阵形式化为向量
end
end