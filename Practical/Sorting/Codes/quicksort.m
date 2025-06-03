function sortedArr = quickSort(arr)
    if numel(arr) <= 1
        sortedArr = arr;
        return;
    end
    
    pivot = arr(end);
    leftArr = arr(arr < pivot);
    middleArr = arr(arr == pivot);
    rightArr = arr(arr > pivot);
    
    sortedArr = [quickSort(leftArr), middleArr, quickSort(rightArr)];
end

% Example usage:
arr = [8, 3, 5, 1, 7, 2];
sortedArr = quickSort(arr);
disp("Sorted array:");
disp(sortedArr);
