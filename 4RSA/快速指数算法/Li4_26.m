%% RSA������Կ
tic
p=7;q=17;
n=p*q;
fain=(p-1)*(q-1);
e=5;
%����Ԫ
[d2,d]=NiYuan(fain,e);
% ����ԿΪ (e,n) ,˽��ԿΪ��d,n��
%% 
tic
mingwen = 19;  %����
% ���� 
disp("����")
c = KuaiSuZhiShu(mingwen,e,n) ;%����
disp(c)
% ����
disp("���ܺ�")
m1 = KuaiSuZhiShu(c,d,n);
disp(m1)
toc
