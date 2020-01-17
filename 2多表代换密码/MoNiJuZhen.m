%求矩阵t的模26逆矩阵
t=[1 2;
   0 3;];
t_bansui=inv(t)*det(t)%矩阵的伴随矩阵
t_det=det(t)%矩阵的行列式

[y1,y2]=NiYuan(t_det,26);%矩阵的行列式的模26逆元
k=y2

b=mod(k*t_bansui,26)