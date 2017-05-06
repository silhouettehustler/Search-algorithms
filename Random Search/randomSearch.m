%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Random Search Algorithm
% Author:    Mateja Glusac
% Rev. Date: 09-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [numComparisons, currentIndex] = randomSearch(V, target,maxComparisons)
      
    numComparisons = 0; 
    
    %execute this chunk of code forever
    while true
        
        %genereate and store the value of a random number between the
        %minimum value of the array and the maximum value of the array
        randomIndex = randi([min(V), max(V)]);
        
        %increment the number of comparisons by 1
        numComparisons = numComparisons + 1;
        
        %if random index of the array is equal to target
         if(V(randomIndex) == target)
             
             %set value of the random index to the current index and break
             %out of the loop
             currentIndex = randomIndex;            
            break;
            
         end
        
         %if number of comparisons is greater than the predefined maximum
         %number of comparisons
         if(numComparisons >= maxComparisons)
             
             %set current index to -1
            currentIndex = -1;
         end
         
     end       
end