%Point=getRandPoint(100);
Point=load('ex3data2.mat');
Point=Point.X;
%plot(Point(:,1),Point(:,2),'r.');
K=3;
centroid1=[3,3;6,2;8,5];
[centroid,cluster]=kmeans(K,Point,centroid1);
plotdata(cluster,Point,centroid,K);

