%�����t��ģ26�����
t=[1 2;
   0 3;];
t_bansui=inv(t)*det(t)%����İ������
t_det=det(t)%���������ʽ

[y1,y2]=NiYuan(t_det,26);%���������ʽ��ģ26��Ԫ
k=y2

b=mod(k*t_bansui,26)