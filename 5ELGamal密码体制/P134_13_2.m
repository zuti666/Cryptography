%p134ҳ ϰ��13��2�� ���� p = 71 , ��ԭ�� g=7
% kδ֪ ������M=30������C=[59,C2] ,��C2
% C1 = g^k mod p
tic
p=71 ;g=7; %���� p = 71 , ��ԭ�� g=7
y=3; %����ԿYb = 3
M=30;%����M=30
for i = 1:100
    C(i)= mod(g^i,p);
    if(C(i)==59)
        k=i;
    end
end
k0 
C2 =mod(y^k *M,p)
toc