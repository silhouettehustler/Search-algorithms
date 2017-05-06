%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Binary Search Algorithm
% Author:    Mateja Glusac
% Rev. Date: 11-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [numComparisons, currentIndex] = binarySearch(V, target)
      
            low = 0; 
            high = length(V);             
            %get the value of the array middle index
            middle = ceil((low + high) / 2);
            currentIndex = -1;
            numComparisons = 0;      
                            
            while low <= high & isequal(currentIndex,-1)
               
                %increment the number of comparisons by 1
                numComparisons = numComparisons + 1; 
                
                %if target is equal to middle index value
                if (target == V(middle))
                    
                    %assign the value to the currentIndex
                    currentIndex = middle;
                    
                else
                
                %if target is less than the middle index value
                if (target < V(middle))
                    
                    %assign the value minus one to the high
                    high = middle - 1; 
                    
                else 
                     %assign the value plus one to the low
                    low = middle + 1;
                    
                end

                %get new middle value
                middle = ceil((low + high) / 2);    
                
                end  
                
            end          

end