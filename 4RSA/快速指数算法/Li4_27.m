%Li4_27
tic
p=71593;q=77041;
n=p*q;
fain=(p-1)*(q-1);
e=17573169;
%����Ԫ
d=2674607171;
% ����ԿΪ (e,n) ,˽��ԿΪ��d,n��
%% ����
M=[1612050119,0500230109,2000061518,0013050000];
for i=1:4
c(i) = KuaiSuZhiShu( M(i),e,n )  ;%����   
end
disp("����");
disp(c);
%% ����
for i=1:4
N(i) = KuaiSuZhiShu( c(i),e,n )  ;%����   
end
disp("���ܺ�");
disp(N);
if(N==M)
    disp("�ɹ�")
end
toc