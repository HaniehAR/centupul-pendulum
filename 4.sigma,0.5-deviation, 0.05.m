L2 = normrnd(1,0.5,100,1);
normplot(L2)
L2(101)=1;
M = zeros(100,100);

for i=1:100
    M(i,i)=((((i-100)/L(i+1))+((i-99.95)/L(i)))*10);
    if i<=99
        M(i,i+1)=(((100-i)/L(i+1))*10);
        M(i+1,i)=(((101-i)/L(i))*10);
    end
end

[U,R]=eig(M);

A2=U(100,100);
G2=sprintf('%d ', A2);
fprintf('Answer: %s\n', A2)

B2=R(100,100);
F2=sprintf('%d ', B2);
fprintf('Answer: %s\n', B2)

