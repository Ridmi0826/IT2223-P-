s = [1 2 2];  %START
t = [2 3 4];  %END
weights = [10 5 7];
G = graph(s, t, weights);
plot(G, 'EdgeLabel1', G.Edges.Weight);
title('Weighted Undirected Graph');
