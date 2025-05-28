arr=[3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];

n=length(arr);
 
tic;  %start timing

for i=1:n
    disp(arr(i));
end

elapsedTime = toc; %End timing and store elapsed time

fprintf('Elapsed time:%fseconds\n',elapsedTime);