%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Random Search Algorithm
% Author:    Mateja Glusac
% Rev. Date: 09-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [numComparisons, currentIndex] = randomSearch(V, target)
      
    numComparisons = 0; 
    currentIndex = -1;
    low = 1;
    high = length(V);
    
    while true           
        randomIndex = randi([low high],1);     
         if(V(randomIndex) == target)
              numComparisons = numComparisons + 1;
             currentIndex = randomIndex;            
            break;            
         elseif V(randomIndex) < target
              numComparisons = numComparisons + 1;
             low = low + 1;
         elseif V(randomIndex) > target
             numComparisons = numComparisons + 1;
             high = high -1;             
         end         
     end       
end