function draw_graph(node_array, number_of_child)

% number_of_child = 3;
%
% parrent_index * number_of_child + child_number
% % childs of node 1
% node_array(0*number_of_child+1) = 2;
% node_array(0*number_of_child+2) = 3;
% node_array(0*number_of_child+3) = 0; % no child
% 
% % childs of node 2
% node_array(1*number_of_child+1) = 0;
% node_array(1*number_of_child+2) = 0;
% node_array(1*number_of_child+3) = 0;
% 
% % childs of node 3
% node_array(2*number_of_child+1) = 4;
% node_array(2*number_of_child+2) = 5;
% node_array(2*number_of_child+3) = 0;
% 
% % childs of node 4
% node_array(3*number_of_child+1) = 0;
% node_array(3*number_of_child+2) = 0;
% node_array(3*number_of_child+3) = 0;
% 
% % childs of node 5
% node_array(4*number_of_child+1) = 6;
% node_array(4*number_of_child+2) = 7;
% node_array(4*number_of_child+3) = 8;
% 
% % childs of node 6
% node_array(5*number_of_child+1) = 0;
% node_array(5*number_of_child+2) = 0;
% node_array(5*number_of_child+3) = 0;

A = reshape(node_array,number_of_child,[]);
A = A';

[r, c] = size(A);
B = reshape(A, 1, r*c);
n = ones(r, c).*(1:r)';
n = reshape(n, 1, r*c);
i = find(B == 0);
n(i) = [];
B(i) = [];

G = digraph(n, B);
plot(G)

