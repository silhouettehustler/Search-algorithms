%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     K-level Jump Search Algorithm
% Author:    Mateja Glusac
% Rev. Date: 28-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [numComparisons,currentIndex] = KlevelJumpSearch(V, target,k)
N= length(V);
q=0;
f= N/k;
currentIndex = -1;

for i= 1:k
    numComparisons = jumpSearch(V((q*f)+1):(i+1)*f,target);
    if numComparisons < f
        currentIndex = 1;       
        break
    end
    q=q+1;
end