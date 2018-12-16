L1 = normrnd(1,0.2,100,1);
normplot(L1)
L1(101)=1;
M = zeros(100,100);

for i=1:100
    M(i,i)=((((i-100)/L1(i+1))+((i-99.98)/L1(i)))*10);
    if i<=99
        M(i,i+1)=(((100-i)/L1(i+1))*10);
        M(i+1,i)=(((101-i)/L1(i))*10);
    end
end

[U,R]=eig(M);

A1=U(100,100);
G1=sprintf('%d ', A1);
fprintf('Answer: %s\n', A1)

B1=R(100,100);
F1=sprintf('%d ', B1);
fprintf('Answer: %s\n', B1)





L2 = normrnd(1,0.2,100,1);
normplot(L2)
L2(101)=1;
M = zeros(100,100);

for i=1:100
    M(i,i)=((((i-100)/L2(i+1))+((i-99.95)/L2(i)))*10);
    if i<=99
        M(i,i+1)=(((100-i)/L2(i+1))*10);
        M(i+1,i)=(((101-i)/L2(i))*10);
    end
end

[U,R]=eig(M);

A2=U(100,100);
G2=sprintf('%d ', A2);
fprintf('Answer: %s\n', A2)

B2=R(100,100);
F2=sprintf('%d ', B2);
fprintf('Answer: %s\n', B2)





l1 = normrnd(1,0.8,100,1);
normplot(l1)
l1(101)=1;
M = zeros(100,100);

for i=1:100
    M(i,i)=((((i-100)/l1(i+1))+((i-99.98)/l1(i)))*10);
    if i<=99
        M(i,i+1)=(((100-i)/l1(i+1))*10);
        M(i+1,i)=(((101-i)/l1(i))*10);
    end
end

[U,R]=eig(M);

a1=U(100,100);
g1=sprintf('%d ', a1);
fprintf('Answer: %s\n', a1)

b1=R(100,100);
f1=sprintf('%d ', b1);
fprintf('Answer: %s\n', b1)





l2 = normrnd(1,0.8,100,1);
normplot(l2)
l2(101)=1;
M = zeros(100,100);

for i=1:100
    M(i,i)=((((i-100)/l2(i+1))+((i-99.95)/l2(i)))*10);
    if i<=99
        M(i,i+1)=(((100-i)/l2(i+1))*10);
        M(i+1,i)=(((101-i)/l2(i))*10);
    end
end

[U,R]=eig(M);

a2=U(100,100);
g2=sprintf('%d ', a2);
fprintf('Answer: %s\n', a2)

b2=R(100,100);
f2=sprintf('%d ', b2);
fprintf('Answer: %s\n', b2)



