%Tutorial 6
%date 26/2/2017

%with loops
#{
prediction = 0.0;
for j = 1:n+1,
  prediction += theta(j) * x(j);
end;
#}

%Vectorized 

prediction = theta' * x;   

