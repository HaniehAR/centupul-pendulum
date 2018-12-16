L = [1 2 3]
m=zeros(legth(L))
for i=1:legth(L)
    m(i,i)=((i-100)/L(i+1)+(i-101)/L(i))*10
    m(i,i+1)=((100-i)/L(i+1))*10
    m(i,i-1)=((101-i)/L(i))*10
end
[U,R]=eig(m)
