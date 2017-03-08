% Tutorial 5

%Date 26/2/2017

v = zeros(10,1);

for i=1:10, 
    v(i) = 2^i;
end;
% Can also use "break" and "continue" inside for and while loops to control execution.

i = 1;
while i <= 5,
  v(i) = 100; 
  i = i+1;
end

v

i = 1;
while true, 
  v(i) = 999; 
  i = i+1;
  if i == 6,
    break;
  end;
end

v


if v(1)==1,
  disp('The value is one!');
elseif v(1)==2,
  disp('The value is two!');
else
  disp('The value is not one or two!');
end

%squareThisNumber(4);   %functions.....
%[w,t]=squarendCubeThisNo(3);  


