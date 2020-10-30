function classificationError = ClassError(predictionSet,targetSet)
countOfSet=0;
%class error �r fraktionen av alla observationer som �r felaktigt
%klassificierade

for i=1:size(targetSet)
    if(targetSet(i)~=predictionSet(i))
        countOfSet = countOfSet+1;
    end
end
classificationError = (1/size(targetSet,1)) * countOfSet;
end