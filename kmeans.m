function [centroid,cluster]=kmeans(K,Point,centroid1)
[m,n]=size(Point);
centroid=centroid1;
dist=zeros(K,1);
cluster=zeros(m,1);
randPoint=zeros(K,n);
while (~isequal(centroid,randPoint))
    randPoint=centroid;%calculate the distance with each centroid,and select the min one
    dist=zeros(K,1);
    for i=1:m
        for j=1:K
            for k=1:n
                dist(j)=dist(j)+(Point(i,k)-randPoint(j,k))^2;
                
            end
            dist(j)=sqrt(dist(j));
            [mindist,cluster(i,1)]=min(dist);
        end
    end
    for i=1:K %update the centroid
        a=find(cluster==i);
        partOfPoint=Point(a,:);
        temp=mean(partOfPoint);
        for j=1:n
            centroid(i,j)=temp(j);
        end
    end
end
