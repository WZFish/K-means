function plotdata(cluster,Point,centroid,K)
c=rand(K,3);
for i=1:K
    a=find(cluster==i);
    partOfPoint=Point(a,:);
    plot(partOfPoint(:,1),partOfPoint(:,2),'.','color',c(i,:));
    hold on;
end
plot(centroid(:,1),centroid(:,2),'r+');
hold off;
    