clear all; clear clc;
rng(20196137);
P1 = [0.98 0.01;0.02 0.99];

a = evaluar_eigen_vector(P1);

function a = evaluar_eigen_vector(P)

[V,D] = eig(P);
if (sum(V(:,1))>0)
    a = [V(1,1)/(V(1,1)+V(2,1)); V(2,1)/(V(1,1)+V(2,1))];
else
    a = [V(1,2)/(V(1,2)+V(2,1)); V(2,2)/(V(1,2)+V(2,2))];
end
end