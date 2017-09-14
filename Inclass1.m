%AW: looks good. see my couple of comments below. 0.85/1.

% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
%%
a = '1';
b = a+a

%AW: In general, please make sure the text in your answers are in commments. 
Answer:
In the first one, x was defined as a number '1'. Thus, y can be calculated as 1+1=2. In the second one, a is defined as a character '1', but has no mathmatical meaning. Thus the calculation for b is meaningless.
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]
Making a one row two column array with 1 and 1 in it.
a2 = [a a]
Making a character 11.
x2b = [x; x]
Making a 2 row 1 column array with 1 and 1 in it.
%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
It is comparing whether a and b are identical. Because a=1 and b=2 in this case, they are not identical. Thus the output will be 0, which means false.

a = b;
a == b

It is comparing whether a and b are identical. Because a was set as the same value as b in this case, they are identical. Thus the output will be 1, which means true.

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b
0 1 0
It is comparing every elements in these two arraies. Because only the 2nd element is same, the answer is 0 1 0.
%explain why this gives an error:

b = [2, 3];
a == b
Because a and b have different amount of elements in them, thus their elements cannot be compared in this way.
%explain why this does not give an error
b = 2;
a == b 

Because b is a number rather than an array, so it can be compared with every elements in array a.
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]
In the second one, the 'oneToTen' is defined as 1:10, and thus oneToTen+10 means 11:20. The combination of these two parts gives answer 1:20.
% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
a=2:2:20
%AW: this isn't quite right since it doesn't use the oneToTen array. should be 2*oneToTen, same for others below. -0.1. 
b=2:2:10;
c=[b,b+10]
% 2. odd numbers from one to nineteen
a=1:2:20

b=1:2:10;
c=[b,b+10]
% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)
a=2:2:20
aa=fliplr(a)

b=2:2:10;
c=[b,b+10]
cc=fliplr(c)
% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)
The first line converts oneToTen array to a vertical line, which cannot be fliped from left to right.

%AW: you didn't find the other function. Should be flipud. -0.05. 

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2
The first line is multipling the 2 matrices.
The second line is multipling every elements in the matrices.

%explain this command:
m2./m1

It is dividing every element in m2 by elements in m1
%extra credit: explain why this command gives a warning:
m2/m1
%% access particular elements and groups of elements
The matrix m2 cannot be divided by another random matrix, unless it is the result of multiplcation of m1 with another matrix.
%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)

Showing the element in the 2 row and 3 column.

rand_nums(2:4,3)
Showing the elements from 2 to 4 row and in 3 column.
rand_nums(1:2,3:4)
Showing the elements from 1 to 2 row and from 3 to 4 column.
rand_nums(:,2)
Showing all elements in the 2nd column.
rand_nums(1,:)
Showing all elements in the 1st row.
rand_nums(:,[1 3 5])

Showing all elements in the 1, 3 and 5 row.
