function RSA1=rsa(minwen)
%minwen=input('�������У�');
m=1;
for i=300:1:2000
    k=0;
    for j=2:1:(i-1)
        if rem(i,j)==0
            k=1;
            break;
        end
    end
    if k==0
        f(m)=i;
        m=m+1;
    end
end
n1=10;
h=ceil(n1.*rand(1,2));%�������������
p=f(h(1,1));
q=f(h(1,1)+h(1,2));    %�������������������
n=p*q;          %���㹫Կn
Q=(p-1)*(q-1);  
for j=1:1:100000
    k=0;
    E=ceil(500*rand);        
for i=2:1:(Q-1)
    if rem(Q,i)==0&&rem(E,i)==0
        k=1;
        break;
    end
end
if k==0
    e=E;
    break;
end
end         %���㹫Կe
l1=length(minwen);
b=dec2bin(e);
l2=length(b);
for j=1:1:l1
    c=0;
   d=1;
for i=1:1:l2
     c=2*c;
     d=mod(d*d,n);
  if b(i)=='1'
     c=c+1;
     d=mod(d*minwen(j),n);
  end
end
if minwen(j)>=97&&minwen(j)<=122
miwen(j)=char(mod(d,26)+97);        %������Сд��ĸ
elseif  minwen(j)>=65&&minwen(j)<=90     
miwen(j)=char(mod(d,26)+65);           %�����Ǵ�д��ĸ
else miwen(j)=d;                %����������
end
end
'��Կ��'
disp(Q)  %Q=(p-1)(q-1)
disp(e)  
disp("˽Կ")
disp(n)   %˽Կn
'������'
disp(miwen)
RSA1=miwen;
