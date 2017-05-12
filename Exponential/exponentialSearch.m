%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Exponential Search Algorithm
% Author:    Mateja Glusac
% Rev. Date: 05-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [numComparisons, currentIndex] = exponentialSearch(V, target)

      N= length(V);
      currentIndex = -1;
      numComparisons = 0;
      
      if V(1) == target
         currentIndex = 1;
      end
      i=2;     
      while i<N && V(i) <= target
         i= i.*2;
         left= 1;
         right= length(V);
        while (left<=right)
            mid= round((left+right)/2);
            if (V(mid) == target)                 
                currentIndex = V(mid);
            break
            elseif (V(mid) > target)
            right = mid -1;           
            elseif (V(mid) < target)
            left= mid+1;
            numComparisons = numComparisons + 1;
            end
        end
      end
end
