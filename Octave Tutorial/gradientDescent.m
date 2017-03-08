function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
disp('initial cost');
computeCost(X,y,theta)
noOfloops = 1;
disp('num_iters is')
disp(num_iters)
for iter = 1:num_iters
disp('***************************************************')
disp('loop no ')
disp(noOfloops);
%disp('for current value of theta')
%theta
%disp('cost is given by ')
%computeCost(X,y,theta)
disp('***************************************************')
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
 %*******************************************************
 prediction = X*theta;
 noSqrError = prediction-y;

                                                          %disp ('theta(1) is')
                                                          %disp (theta(1));
                                                          %disp('noSqrError is')
                                                          %disp (noSqrError);
                                                          %disp (sum(noSqrError));
temp = theta(1)- alpha/m*sum(noSqrError);
disp('temp1 is ')
disp(temp)
disp('***************************************************')
% *******************************************************
noSqrError2= sum(noSqrError .* X(:,2));
                                                            %disp(noSqrError2);
temp2=theta(2) - alpha/m * noSqrError2;
disp('temp 2 is ')
disp(temp2)
disp('***************************************************')


    % ============================================================
 
    % Save the cost J in every iteration    
    theta = [temp;temp2];
    disp('Updated theta..ignoring the initial value..')
    theta
    J_history(iter) = computeCost(X, y, theta)
    
   
noOfloops++;
end

end
