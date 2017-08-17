function centroid=findseeds(K,Point);
[m,n]=size(Point);
centroid(1,:)=Point(unidrnd(m),:);%get one point randomly as first seed
%find min dist with seed stored in d
d=zeros(m,1);
for j=2:K
    dist=zeros(size(centroid,1),1);
    for i=1:m
        for p=1:n
            dist=dist+(centroid(:,p)-Point(i,p)).^2;
        end
        dist=sqrt(dist);
        d(i)=min(dist);
    end
    sumd=sum(d);
    random=rand()*sumd;
    dx=1;
    while random>0
        random=random-d(dx);
        dx=dx+1;
    end
    centroid(j,:)=Point(j,:);
end

