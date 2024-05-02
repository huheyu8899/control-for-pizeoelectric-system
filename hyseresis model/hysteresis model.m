%%  Copyright (c) 2022,
%  All rights reserved.
%  Authors: Mohammad Al Janaideh (maljanaideh@mun.ca)
% Department of Mechanical Engineering, Memroial University of Newfoundland
%%  This code is for Example 4 in Letter paper 
%% "The Prandtl-Ishlinskii Hysteresis Model"
% (Fundamentals of the Model and its Inverse Compensator)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                         Generalized PI Model
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc
clear
close all
%%%%%%%%%%%%%%%%%%%%%%%%
%% GPI Model
%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Define the Input
A=5; %Amplitude of input
f=1; %Frequency
T=3/f; %three cycle
t=0:T/10000:T; %Time vector
v=A*sin(2*pi*f.*t); %Input
N=length(v); %number of sample
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% tanh enevelope function
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a0=6;a1=0.4;a2=0;a3=0;
b0=6;b1=0.4;b2=0;b3=0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1) Define thresholds and weights of PI
n=7;  %number of thresholds
a=0.45;
b=0.65;
c=7.75e-4;
p0=0.4;
r=[];
pr=[];
for j=1:1:n  %This loop is to define the threshold and the density function
    r(j)=a*(j-1); 
    pr(j)=b*exp(-c*r(j)); 
end

% 2) Play operator of r
Fr=zeros(n,N);
for j=1:1:n
        Fr(j,1)= 0;  % the initial value
      for k=2:1:N   % these loops to find PI model
        %% Pi Operator
        F_inc=v(k);
        F_dec=v(k);
        % Calculate the play operator
        A=F_inc-r(j);
        B=min(F_dec+r(j),Fr(j,k-1));
        Fr(j,k)=max(A,B);
      end%% End sample
end %% End threshold loop
% 3) The Output of the PI Model
Y=p0*v+pr*Fr; % Equation (41)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%% Plot the results
%

% 5) plot the GPI input-output
h5=figure;

plot(v,Y,'linewidth',2);
xlabel('Hysteresis input $u$','Interpreter','latex')
ylabel('Hysteresis output $\omega$','Interpreter','latex')

