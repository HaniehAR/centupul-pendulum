L1 = normrnd(1,0.2,100,1);
normplot(L1)
L1(101)=1;
M = zeros(100,100);

for i=1:100
    M(i,i)=((((i-100)/L(i+1))+((i-99.98)/L(i)))*10);
    if i<=99
        M(i,i+1)=(((100-i)/L(i+1))*10);
        M(i+1,i)=(((101-i)/L(i))*10);
    end
end

[U,R]=eig(M);

A1=U(100,100);
G1=sprintf('%d ', A1);
fprintf('Answer: %s\n', A1)

B1=R(100,100);
F1=sprintf('%d ', B1);
fprintf('Answer: %s\n', B1)
