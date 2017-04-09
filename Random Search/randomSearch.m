%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Random Search Algorithm
% Author:    Mateja Glusac
% Rev. Date: 09-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [numComparisons, currentIndex] = randomSearch(V, target,maxComparisons)
      
    numComparisons = 0; 
    
    while true
        
        randomIndex = randi([min(V), max(V)]);
        numComparisons = numComparisons + 1;
        
         if(V(randomIndex) == target)
            break;
         end
        
         if(numComparisons >= maxComparisons)
            currentIndex = -1;
         end
         
     end       
end