%% 
function MiWenaa = DESJia(mingwen)
n1=length(mingwen); %�ж����ĵĳ���
%% ������ĳ��Ȳ��ܱ�8��������ȫ
while (mod(n1,8)~=0)
    mingwen=[mingwen,'a'];
    n1=length(mingwen);
end
%% ���ַ�ת��Ϊ8λ0-1��
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
%�����ĺϲ�,����Ϊ64λ��
p=1;
for i=1:n1/8
U1(i,1:64)=[U(p,1:8),U(p+1,1:8),U(p+2,1:8),U(p+3,1:8),U(p+4,1:8),U(p+5,1:8),U(p+6,1:8),U(p+7,1:8)];
p=p+8;
end
%%  ����
for i=1:n1/8
 MiWen0(i,1:64)= DESJiaMi(U1(i,1:64));
end
%% �����ܺ���ַ�ת��Ϊ�ַ�
%�����Ľ��в�֣�
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


%��������ת��Ϊ�ַ� MiWen��n��8�еĶ���������
%�Ƚ�������8λ�������ַ�תΪʮ�������֣�Ȼ��ʮ�������ֶ�26ȡģ��������ת��Ϊ��Ӧ���ַ�
for i =1:n1
    MiWen (i)= bin2dec(num2str(MiWen1(i,1:8)));
    j=mod(MiWen(i),26);
    MiWenaa(i)=ASC(j+1);
end
end