%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%% NEUROMECHANICS  %%%%%%%%%%%%%
% (c) Francisco Valero-Cuevas
% September 2013, version 1.0
% Filename: J2D2DOF.m
% Jacobian of 2D, 2DOF linkage system


% Define variables for symbolic analysis
syms G J        % Vector functions
syms q1 q2 x y  % Degrees of freedom
syms l1 l2      % System parameters
%Define x and y coordinates of the endpoint
%Create Matrix for Geometric Model
x = l1.*cos(q1) + l2.*cos(q1+q2);
y = l1.*sin(q1) + l2.*sin(q1+q2);
G = [x;y];
%Create Jacobian and its permutations
J = jacobian(G,[q1,q2])
J_inv = inv(J)
J_trans = J'
J_trans_inv = inv(J')
latex(G)
latex(J)
latex(J_trans)
latex(J_inv)
latex(J_trans_inv)


% Numerical example
% Define Link Lengths (m)
l1 = 1
l2 = 1
% Define joint angles (radians)
q1 = 0     % 0 degrees
q2 = pi/2  % 90 degrees
fprintf('Evaluate the functions for these parameter values\n')
fprintf('G');subs(G)
fprintf('J');subs(J)
fprintf('J_trans');subs(J_trans)
fprintf('J_inv');subs(J_inv)
fprintf('J_trans_inv');subs(J_trans_inv)
% Numerical examples
fprintf('Example of applying a positive angular velocity at q1 to find the resulting instantaneous endpoint velocity')
q1_dot = 1
q2_dot = 0
x_dot = subs(J*[q1_dot q2_dot]')
fprintf('Example of applying that same endpoint velocity to find the resulting instantaneous angular velocities')
q_dot = subs(J_inv*x_dot)
fprintf('Example of finding which torques produce a horizontal endpoint force vector in equilibrium')
tau = subs(J_trans*[1 0]')
fprintf('Example of applying those joint torques to find the resulting endpoint force vector in equilibrium')
f = subs(J_trans_inv*tau)