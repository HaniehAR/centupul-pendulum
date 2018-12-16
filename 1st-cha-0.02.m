l1 = normrnd(1,0.8,100,1);
normplot(l1)
l1(101)=1;
M = zeros(100,100);

for i=1:100
    M(i,i)=((((i-100)/L(i+1))+((i-99.98)/L(i)))*10);
    if i<=99
        M(i,i+1)=(((100-i)/L(i+1))*10);
        M(i+1,i)=(((101-i)/L(i))*10);
    end
end

[U,R]=eig(M);

a1=U(100,100);
g1=sprintf('%d ', a1);
fprintf('Answer: %s\n', a1)

b1=R(100,100);
f1=sprintf('%d ', b1);
fprintf('Answer: %s\n', b1)


