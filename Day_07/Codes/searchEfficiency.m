arr = 1:1000;  
target = 750; 

% Linear Search 
found_linear = false;
index_linear = -1;

tic;  
for i = 1:length(arr)
    if arr(i) == target
        found_linear = true;
        index_linear = i; 
        break;
    end
end
elapsedTime_linear = toc;  

%binary search
found_binary = false;
low = 1;
high = length(arr);
index_binary = -1;  

tic;  
while low <= high
    mid = floor((low + high) / 2);  
    if arr(mid) == target
        found_binary = true;
        index_binary = mid; 
        break;
    elseif arr(mid) < target
        low = mid + 1;  
    else
        high = mid - 1;  
    end
end
elapsedTime_binary = toc;  


fprintf("Linear Search:\n");
if found_linear
    fprintf("Target found at index: %d \n", index_linear);
else
    fprintf("Target not found\n");
end
fprintf("Elapsed time: %f seconds\n\n", elapsedTime_linear);


fprintf("Binary Search:\n");
if found_binary
    fprintf("Target found at index: %d \n", index_binary);
else
    fprintf("Target not found\n");
end
fprintf("Elapsed time: %f seconds\n", elapsedTime_binary);

%find which is efficiency
if elapsedTime_binary < elapsedTime_linear
    fprintf("\nBinary search is faster!\n");
else
    fprintf("\nLinear search is faster!\n");
end

