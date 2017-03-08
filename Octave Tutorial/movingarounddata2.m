% Tutorial 2
%Moving Around Data _2
%Date 26/2/2017

disp("Starts HERE\n")

A = [1 2;3 4;5 6]

sz = size(A);  % 3*2   ....now sz itself becomes a matrix  1*2 
sz  
size(A,1)
size(A,2)

v=[1 2 3 4]
length(v)
length(A)  %return the longer row or column  here 3

length([1;2;3;4;5;66])



%load ex1data1.txt %loads the file
%size(ex1data1)

%who   %all the variables
%whos   %with detail

%clear  to get rid of variable clear A
%save A.mat v to save a variable

%save A.txt v -ascii

A(3,2)  %returns element
A(2,:)
A(:,2)

A([1,3],:) 

A(:,2)=[10;11;12]  %replaces 2nd column

A= [A,[100;101;102]]  %appends 

A(:)  % all elements in a single column

B = [34,35,36;56,78,90;78,76,54]

C=[A,B]
D=[A;B]



%********************************************************************
#{
%% dimensions

sz = size(A) % 1x2 matrix: [(number of rows) (number of columns)]
size(A,1) % number of rows
size(A,2) % number of cols
length(v) % size of longest dimension


%% loading data
pwd   % show current directory (current path)
cd 'C:\Users\ang\Octave files'  % change directory 
ls    % list files in current directory 
load q1y.dat   % alternatively, load('q1y.dat')
load q1x.dat
who   % list variables in workspace
whos  % list variables in workspace (detailed view) 
clear q1y      % clear command without any args clears all vars
v = q1x(1:10); % first 10 elements of q1x (counts down the columns)
save hello.mat v;  % save variable v into file hello.mat
save hello.txt v -ascii; % save as ascii
% fopen, fread, fprintf, fscanf also work  [[not needed in class]]

%% indexing
A(3,2)  % indexing is (row,col)
A(2,:)  % get the 2nd row. 
        % ":" means every element along that dimension
A(:,2)  % get the 2nd col
A([1 3],:) % print all  the elements of rows 1 and 3

A(:,2) = [10; 11; 12]     % change second column
A = [A, [100; 101; 102]]; % append column vec
A(:) % Select all elements as a column vector.

% Putting data together 
A = [1 2; 3 4; 5 6]
B = [11 12; 13 14; 15 16] % same dims as A
C = [A B]  % concatenating A and B matrices side by side
C = [A, B] % concatenating A and B matrices side by side
C = [A; B] % Concatenating A and B top and bottom


}#