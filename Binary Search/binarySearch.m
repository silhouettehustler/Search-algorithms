%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Binary Search Algorithm
% Author:    Mateja Glusac
% Rev. Date: 11-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [numComparisons, currentIndex] = binarySearch(V, target)
      
            low = 0; 
            high = length(V);         
            middle = ceil((low + high) / 2);
            currentIndex = -1;
            numComparisons = 0;      
                            
            while low <= high & isequal(currentIndex,-1)
                numComparisons = numComparisons + 1; 
                if (target == V(middle))
                    currentIndex = middle;                    
                else
                if (target < V(middle))
                    high = middle - 1;                     
                else 
                    low = middle + 1;                    
                end
                middle = ceil((low + high) / 2);  
                end                  
            end          
end