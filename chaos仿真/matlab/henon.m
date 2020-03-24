b=0.3;
N=400;
an=ones(1,N);
xn=zeros(1,N);
hold on;box on;
x=0;
y=0;
for a=0:0.001:1.4
    for k=1:N
        xm=x;
        ym=y;
        x=ym+1-a*xm*xm;
        y=b*xm;
    end
    xn(1)=x;
    for n=2:N
        xm=x;
        ym=y;
        x=ym+1-a*xm*xm;
        y=b*xm;
        xn(n)=x;
    end
    plot(an*a,xn,'b.','markersize',1);
end
xlim([0,a]);