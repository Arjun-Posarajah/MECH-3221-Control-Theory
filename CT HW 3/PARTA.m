%%%Homework 3 Control Theory 
%%Arjun Posarajah 104980541
%Part A

%%%SSR Model
%%Values A that are multiplied by X in the input eqn 
A = [-2.7 -2.2 ; -0.8 -3.5];
%%Values B that are multiplied by U in the input eqn 
B= [ -4;3.1];
%%Values C that are multplied by X in the output eqn 
C=[-3.9 3.6];
%%Values D that multiplied by U in the output eqn
D=0;

%Time range of 0s to 6s with a step of 0.001s
t= 0:0.001:6;
%%%Vector with equal row/columns with a magnitude of 1.9
u=1.9*(ones(size(t)));
%%%Initial States of x1 & x2 with a matrix form of both
x1=0.4;
x2=0.9;
x=[x1,x2];

%%Creation of the Continous time space model
sys=ss(A,B,C,D);
%%function of the simulated time response
[y,t]=lsim(sys,u,t,x);

%graphing of the function above from the variable of t,y with aesthetics
%like a grid, title and axis names
plot(t,y);
grid;
title('Output vs Time for the Dynamic Response')
xlabel('time (sec)');
ylabel('output (y)');


