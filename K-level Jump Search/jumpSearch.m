%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Jump Search Algorithm
% Author:    Mateja Glusac
% Rev. Date: 15-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [numComparisons, currentIndex] = jumpSearch(V, target)
      
        n = length(V);        
        jumpIndex = floor(sqrt(n));      
        startIndex = 1;
        numComparisons = 0;
        
        while (V(min(jumpIndex, n)) < target)
        
            numComparisons = numComparisons +1;
            
            startIndex = jumpIndex;
            jumpIndex = jumpIndex + floor(sqrt(n));
            if (startIndex >= n)
                currentIndex = -1;
                return
            end
        end 
        
        while (V(startIndex) < target)
        
            numComparisons = numComparisons +1;
            startIndex = startIndex + 1;
           
            if (startIndex == min(jumpIndex, n))
                currentIndex = -1;
            end
        end 
      
        if (V(startIndex) == target)
            numComparisons = numComparisons +1;
            currentIndex = startIndex; 
        end
   
end