
load('flood.mat')
X=flood;
for i=1:16
    for j=1:16
        num=abs(transpose(X(:,i))*X(:,j))
        den=sqrt((transpose(X(:,i))*X(:,i))*(transpose(X(:,j))*X(:,j)))
        R1(i,j)=(num/den)
    end
end

