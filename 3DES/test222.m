%% test
MingWen='0000000100100011010001010110011110001001101010111100110111101111'; %����  16���Ƶ�'0123456789ABCDEF'
MiYao = '0001001100110100010101110111100110011011101111001101111111110001'; %�����㷨����Կ 16����"133457799BBCDFF1";
disp('���ģ������ƣ�');
MiWen=DESJiaMi(MingWen) %���ܲ���������
o='';  %�����������־���ת��Ϊ�ַ���
for i=1:64
    o=strcat(o,num2str(MiWen(i)));
end
disp('���ܺ��ԭ��');
YuanWen=DESJieMi(o)%���ܲ���ԭ��
pp='';  %�����ܲ���ԭ�������־���ת��Ϊ�ַ���
for i=1:64
    pp=strcat(pp,num2str(YuanWen(i)));
end

if ( MingWen==pp )  %�����ܺ��ԭ����������ͬʱ
    disp('�㷨�ɹ�');
else 
    disp('�㷨ʧ��');
end