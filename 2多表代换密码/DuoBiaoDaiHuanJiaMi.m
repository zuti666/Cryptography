%�����������㷨
function   miwen= DuoBiaoDaiHuanJiaMi(A,B,mingwen)
% A��BΪ��Կ��mingwen������
n0=length(A);  %�ж���ԿA�ĳ���
n1=length(mingwen); %�ж����ĵĳ���
%% ���ַ�ת��Ϊ����
m0=zeros(1,length(mingwen)); %m0 ����������Ķ�Ӧ������
abc='abcdefghijklmnopqrstuvwxyz';
for i=1:n1
    for j=1:26
        if(mingwen(i)==abc(j))
            m0(i)=j-1;
        end
    end
end
%% �����ַ���
M= ones(n0,ceil(n1/3)); %MΪ����������
p=1;
for i =1:n0:n1
    M(1:n0,p)=m0(i:i+n0-1);
    p=p+1;
end
%%  ����
C = ones(n0,ceil(n1/3)); %CΪ���ܺ������
for i=1:ceil(n1/3)
    C(1:n0,i)=mod(   ( A*(  M(1:n0,i)  )+B)   ,26);
end
%% �����ܺ������ת��Ϊ�ַ�
%�����������ĺϲ�
p=1;
for i =1:n0:n1
    mi(i:i+n0-1)=C(1:n0,p);
    p=p+1;
end
miwen='';
for i=1:n1
    for j=1:26
        if mi(i)+1==j
            miwen(i)=abc(j);
        end
    end
end



end