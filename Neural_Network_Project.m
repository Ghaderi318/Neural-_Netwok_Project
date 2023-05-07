W0=[0 0];
b0=0;
eta=0.25;
C=[rand(2,100),rand(2,100)+2];
t=[4 5];
for j=1:2000
for i=1:2
a(i)=W0*C(:,i)+b0;
e(i)=t(:,i)-a(i);
W0=W0+eta*e(i)*C(:,i)'
b0=b0+eta*e(i)
end
error=abs(e)
if error<1e-3
epoch=j
break
end
end
