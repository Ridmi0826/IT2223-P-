function sortedArr = mergeSort(arr)
    if numel(arr) <= 1
        sortedArr = arr;
        return;
    end
    
    mid = floor(numel(arr)/2);
    leftHalf = mergeSort(arr(1:mid));
    rightHalf = mergeSort(arr(mid+1:end));
    
    sortedArr = merge(leftHalf, rightHalf);
end

function mergedArr = merge(leftArr, rightArr)
    mergedArr = [];
    while ~isempty(leftArr) && ~isempty(rightArr)
        if leftArr(1) <= rightArr(1)
            mergedArr = [mergedArr, leftArr(1)];
            leftArr(1) = [];
        else
            mergedArr = [mergedArr, rightArr(1)];
            rightArr(1) = [];
        end
    end
    
    mergedArr = [mergedArr, leftArr, rightArr];
end

% Example usage:
arr = [8, 3, 5, 1, 7, 2];
sortedArr = mergeSort(arr);
disp("Sorted array:");
disp(sortedArr);
