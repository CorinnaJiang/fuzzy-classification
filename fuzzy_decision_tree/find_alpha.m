clear;
clc;

% Test range
for alpha_test = 0.1:0.01:0.9
   % Update alpha value
    alpha1 = alpha_test
   % Classification
    decision_tree;
   % Set the class number
    if (class_number==3)
        break
    end
end
alpha1
