n=20;
N=n^2;
xp = zeros(1,N);
Aa = ones(1,N);
x=0.36;
hold on;box on;
for a =0.01:0.001:0.5
    for cir1=1:N
        if x<=a
            x=x/a;
        else
            x=(1-x)/(1-a);
        end
    end
    for cir3=1:N
        if x<=a
            x=x/a;
        else
            x=(1-x)/(1-a);
        end
        xp(cir3)=x;
    end
    plot(Aa*a,xp,'k.','markersize',1);
end
xlim([0,a]);