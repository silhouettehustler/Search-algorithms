%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Linear Search Algorithm
% Author:    Ian van der Linde
% Rev. Date: 11-02-17
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [numComparisons, currentIndex] = linearSearch(V, target)
      
    numComparisons = 0; 
    
    for currentIndex=1:length(V)       
        numComparisons = numComparisons + 1;
        if(V(currentIndex) == target)
            break;
        end
    end  
    
    if(V(currentIndex)~=target)
        currentIndex = -1;
    end
    
end