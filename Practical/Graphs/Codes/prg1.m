nodes = {'A','B','C','D','E','F','G'};

%Define edges using source and target nodes
s =[1 1 2 2 3 3]; % from :- A-B,A-C,B-D,B-E,C-
t =[2 3 4 5 6 7]; %to

%create a directed graph
G= digraph(s,t,[],nodes);

plot(G,'Layout','layered','Direction','down');
title('Simple tree with 3 levels');

%2
weights=[5 3 2 4 6 1];
G=digraph(s,t,weights,nodes);
plot(G,'Layout','layered','Direction','down','EdgeLabel',G.Edges.Weight);
title('Weighted Tree with 3 levels');