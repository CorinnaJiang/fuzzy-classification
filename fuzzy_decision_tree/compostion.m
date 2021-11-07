cosine;

R_new=fuzzy_maxmin(R1,R1)

while ~isequal(R1,R_new)
    R1=R_new;
    R_new=fuzzy_maxmin(R1,R1);
end

while isequal(R1,R_new)
    R_fin=R_new  
    break
end
R_fin

function mxmn=fuzzy_maxmin(A,B)
    % Calculates max-min product of matrices A and B
    for i=1:length(A(:,1))
        for j=1:length(B(1,:));
            mn=[];
            for k=1:length(B(:,1))
                mn(k)=min(A(i,k),B(k,j));
            end
            mxmn(i,j)=max(mn);
        end
    end
end