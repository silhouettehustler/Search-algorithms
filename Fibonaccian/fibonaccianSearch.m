%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     Fibonaccian Search Algorithm
% Author:    Mateja Glusac
% Rev. Date: 20-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [numComparisons,currentIndex] = fibonaccianSearch(V,target)

fib2= 1;
fib1= 1;
fib= 2;
N= length(V);
numComparisons=0;
currentIndex = -1;
while (fib<N)
fib2= fib1;
fib1= fib;
fib= fib1+fib2;
end
i= 0;
offset = 0;
while fib>1
    i = min(offset+fib2,N);
    if target < V(i) 
       fib = fib2;
       fib1=fib1-fib2;
       fib2= fib-fib1;
      numComparisons = numComparisons + 1;
    elseif target > V(i) 
       fib = fib1;
       fib1=fib2;
       fib2= fib-fib1;
      numComparisons = numComparisons + 1;
       offset= i;
    else
       currentIndex = V(i);
       break;
        end
end
end