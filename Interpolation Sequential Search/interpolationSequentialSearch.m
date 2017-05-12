%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Interpolation Sequential Search Alogorithm
% Author:    Mateja Glusac
% Rev. Date: 13-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [numComparisons,currentIndex] = interpolationSequentialSearch(V, target)
l= 1;
r= length(V);
numComparisons= 0;
currentIndex = -1;
while (l <= r)
    if(V(l)==V(r))
        if(V(l) == target)
            currentIndex = target;
            return
        end
    else
        numComparisons = numComparisons + 1;
k = target - V(l)/V(r)- V(l);
if k<0 || k>1
    return    
end
mid = round(l+k*(r-l));
err = target - mid;
if err< k*(norm(l,r))
     numComparisons = linearSearch(V, target);
end
if (target < V(mid))
    r = mid-1;
elseif (target > V(mid))
    l = mid+1;
else
    currentIndex = V(mid);
    break   
end
    end
end
end