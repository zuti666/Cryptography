function d=KuaiSuZhiShu(a,s,n)
%���� ָ���ĵ�Ϊa  ָ��Ϊs , ������n
b=dec2bin(s);
k=length(b);
c=0; d=1;
for i=1:k
    c=2*c;
    d=mod((d*d),n);
    if ( b(i) ==  '1')
           c=c+1;
           d=mod((d*a),n);
    end
end
end