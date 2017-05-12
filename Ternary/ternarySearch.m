%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Ternary Search Algorithm
% Author:    Mateja Glusac
% Rev. Date: 29-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [numComparisons,currentIndex] = ternarySearch(V, target)

half1 = ceil(length(V)/3);
half2 = ceil(2*length(V)/3);
numComparisons=0;
currentIndex = -1;

if V(half1) == target
    currentIndex = half1;
    return
elseif V(half1) > target    
    numComparisons= numComparisons +ternarySearch(V(1: half1-1), target)+1;
elseif V(half2) == target
    currentIndex = half1;
elseif V(half2) > target   
   numComparisons= numComparisons +ternarySearch(V(half1+1: half2-1), target)+1;
else 
   numComparisons= numComparisons +ternarySearch(V(half2+1: length(V)), target)+1;
end
end
