%% 
function MiWenaa = DESJia(mingwen)
n1=length(mingwen); %判断明文的长度
%% 如果明文长度不能被8整除，补全
while (mod(n1,8)~=0)
    mingwen=[mingwen,'a'];
    n1=length(mingwen);
end
%% 将字符转换为8位0-1码
ASC = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
mingwen1=zeros(n1);
for i=1:n1
    for j=1:26
     if (mingwen(i)==ASC(j))
         mingwen1(i)=j-1;
     end
    end
end
U=dec2bin( mingwen1 , 8 );
%将明文合并,分组为64位长
p=1;
for i=1:n1/8
U1(i,1:64)=[U(p,1:8),U(p+1,1:8),U(p+2,1:8),U(p+3,1:8),U(p+4,1:8),U(p+5,1:8),U(p+6,1:8),U(p+7,1:8)];
p=p+8;
end
%%  加密
for i=1:n1/8
 MiWen0(i,1:64)= DESJiaMi(U1(i,1:64));
end
%% 将加密后的字符转换为字符
%将密文进行拆分，
i=1;
for j=1:n1/8 
  p=1;
  while(mod(i,8)~=0)
    MiWen1(i,1:8)= MiWen0(j,p:p+7);
    p=p+8;
    i=i+1;
  end
  MiWen1(i,1:8)= MiWen0(j,p:p+7);
  i=i+1; 
end


%将数字再转换为字符 MiWen是n行8列的二进制数字
%先将数字由8位二进制字符转为十进制数字，然后十进制数字对26取模，由余数转化为对应的字符
for i =1:n1
    MiWen (i)= bin2dec(num2str(MiWen1(i,1:8)));
    j=mod(MiWen(i),26);
    MiWenaa(i)=ASC(j+1);
end
end