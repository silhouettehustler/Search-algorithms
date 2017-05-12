%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title:     K-level Jump Search Test Harness
% Author:    Mateja Glusac
% Rev. Date: 28-04-2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;close all;clc;
 
maxArraySize = 1024;
k= 32;

for N = 1:maxArraySize    
    
    array = 1:maxArraySize;
    
    for searchTarget = 1:N
        comparisons(searchTarget) = kLevelJumpSearch(array, searchTarget,k);        
    end
    
    min_comps(N) = min(comparisons);  
    avg_comps(N) = mean(comparisons);  
    max_comps(N) = max(comparisons);  
        
    clear comparisons;    
    
end
 
figure;
 
% Plot Observed 
 
plot([1:maxArraySize], min_comps,'g','LineWidth',3);hold on;
plot([1:maxArraySize], avg_comps,'y','LineWidth',3);
plot([1:maxArraySize], max_comps,'r','LineWidth',3);
 
legend('min','mean','max');
 
% Plot Expected
 
plot([1:maxArraySize], linspace(1,1,maxArraySize), 'k:');
plot([1:maxArraySize], linspace(1,N/2,maxArraySize), 'k:');
plot([1:maxArraySize], linspace(1,N,maxArraySize), 'k:');
 
% Annotate Chart
 
xlabel('Array Size (N)','FontSize',14);
ylabel('Comparisons', 'FontSize', 14);
title('K level Jump Search (Successful)','FontSize', 14);
xlim([0 maxArraySize]);
ylim([0 max(max_comps)]);
 
print -f1 -r300 -dbmp klevelJumpSearchSuccessful.bmp
