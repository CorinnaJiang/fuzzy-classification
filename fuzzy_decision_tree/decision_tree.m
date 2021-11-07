
compostion;
% alpha1=0.8
R_alpha = fuzzy_eqR(alpha1,R_fin)
[class_number]=Class_spilt(R_alpha)
% if length(indx_uniq)~=0
%     sprintf('Unique class')
%     sprintf('{x%d}',indx_uniq)
% end
% sprintf('Same class')
% sprintf('x%d，',indx)

%implement the R Fuzzy Equivalence Relation
function R1=fuzzy_eqR(alpha,R)
    for i=1:16
        for j=1:16
            if R(i,j)>=alpha
                R1(i,j)=1;
            else
                R1(i,j)=0;
            end
        end
    end
end


function [class_number]=Class_spilt(M)
    [C, ia, ~]=unique(M,'rows')
    len_unique= length(ia)
    n=1
    s=1
    class_number=0

    for j=1:len_unique

        for i = 1:16
            if (isequal(M(i,:),C(j,:)))
                index(n)= i
                n=n+1
            end
        end
        if n==1
           indx_uniq=ia(j)
           class_number=class_number+1
           sprintf('{x%d}',indx_uniq)
        else

           sprintf('x%d，',index)
           s=s+1
           class_number=class_number+1
           
        end
        n=1

    end

end

