function  mingwen=DuoBiaoDaiHuanJieMi(A1,B,miwen)

% A1Ϊ��ԿA�������BΪ��Կ��miwen������
n0=length(A1);  %�ж���ԿA�������ĳ���
n1=length(miwen); %�ж����ĵĳ���
%% ���ַ�ת��Ϊ����
m0=zeros(1,length(miwen)); %m0 ����������Ķ�Ӧ������
abc='abcdefghijklmnopqrstuvwxyz';
for i=1:n1
    for j=1:26
        if(miwen(i)==abc(j))
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
%% ����
C = ones(n0,ceil(n1/3)); %CΪ���ܺ������
for i=1:ceil(n1/3)
    C(1:n0,i)=mod(A1*(M(1:n0,i)-B),26);
end
%% �����ܺ������ת��Ϊ�ַ�
%�����������ĺϲ�
p=1;
for i =1:n0:n1
    mi(i:i+n0-1)=C(1:n0,p);
    p=p+1;
end
mingwen='';
for i=1:n1
    for j=1:26
        if mi(i)+1==j
            mingwen(i)=abc(j);
        end
    end
end
end