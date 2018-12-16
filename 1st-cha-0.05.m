
l2 = normrnd(1,0.8,100,1);
normplot(l2)
l2(101)=1;
M = zeros(100,100);

for i=1:100
    M(i,i)=((((i-100)/L(i+1))+((i-99.95)/L(i)))*10);
    if i<=99
        M(i,i+1)=(((100-i)/L(i+1))*10);
        M(i+1,i)=(((101-i)/L(i))*10);
    end
end

[U,R]=eig(M);

a2=U(100,100);
g2=sprintf('%d ', a2);
fprintf('Answer: %s\n', a2)

b2=R(100,100);
f2=sprintf('%d ', b2);
fprintf('Answer: %s\n', b2)
