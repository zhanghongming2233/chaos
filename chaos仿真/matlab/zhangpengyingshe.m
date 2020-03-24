n = 20;
N = n^2;
xp = zeros(1,N);
Aa = ones(1,N);
hold on; box on;
x = 0.01;
for a = 0:0.001:1
    for n = 1:N
        x=a-(1+a)*abs(x);
    end
    for k=1:N
        x=a-(1+a)*abs(x);
        xp(k)=x;
    end
    plot(Aa*a,xp,'b.','markersize',1);
end
xlim([0,a]);