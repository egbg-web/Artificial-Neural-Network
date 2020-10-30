function weightMatrix=WeightMatrix(patterns,diagElements)

sizePattern=size(patterns);
numberBits = sizePattern(1); %f�rsta elementet i sizepattern
weightMatrix=0;

for j=1:numberBits
    for i=1:numberBits
    weightMatrix(i,j)=sum(patterns(i,:).*patterns(j,:));
    end
end
if diagElements==0
  weightMatrix = (1/(numberBits).*(weightMatrix-eye(numberBits).*weightMatrix(1,1))); %skal�r mult av egenmatrisen
else 
    weightMatrix = 1/(numberBits).*weightMatrix;
end 
    
end

