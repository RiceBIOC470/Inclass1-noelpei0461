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

Answer:
In the first one, x was defined as a number "1". Thus, y can be calculated as 1+1=2. In the second one, a is defined as a word '1', but has no mathmatical meaning. Thus the calculation for b is meaningless.
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b



%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b

%explain why this gives an error:

b = [2, 3];
a == b

%explain why this does not give an error
b = 2;
a == b 
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]
% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty

% 2. odd numbers from one to nineteen

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)

% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2

%explain this command:
m2./m1
%extra credit: explain why this command gives a warning:
m2/m1
%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)


rand_nums(2:4,3)

rand_nums(1:2,3:4)

rand_nums(:,2)

rand_nums(1,:)

rand_nums(:,[1 3 5])


