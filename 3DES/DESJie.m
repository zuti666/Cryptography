%DES����
function MingWenaa = DESJie(miwen)
n1=length(miwen); %�ж����ĵĳ���
%% ������ĳ��Ȳ��ܱ�8��������ȫ
while (mod(n1,8)~=0)
    miwen=[miwen,'a'];
    n1=length(miwen);
end
%% ���ַ�ת��Ϊ8λ0-1��
ASC = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
miwen1=zeros(n1);
for i=1:n1
    for j=1:26
     if (miwen(i)==ASC(j))
         miwen1(i)=j-1;
     end
    end
end
U=dec2bin( miwen1 , 8 );
%��mi�ĺϲ�,����Ϊ64λ��
p=1;
for i=1:n1/8
U1(i,1:64)=[U(p,1:8),U(p+1,1:8),U(p+2,1:8),U(p+3,1:8),U(p+4,1:8),U(p+5,1:8),U(p+6,1:8),U(p+7,1:8)];
p=p+8;
end
%% ����
for i=1:n1/8
 MingWen0(i,1:64)= DESJieMi(  U1(i,1:64)  );
end
%% �����ܺ���ַ�ת��Ϊ�ַ�
%�����Ľ��в�֣�
i=1;
for j=1:n1/8 
  p=1;
  while(mod(i,8)~=0)
    MingWen1(i,1:8)= MingWen0(j,p:p+7);
    p=p+8;
    i=i+1;
  end
  MingWen1(i,1:8)= MingWen0(j,p:p+7);
  i=i+1; 
end

for i =1:n1
    MingWen (i)= bin2dec(num2str(MingWen1(i,1:8)));
    j=mod(MingWen(i),26);
    MingWenaa(i)=ASC(j+1);
end
