n = 64;
key = 0.512;
an = linspace(3.1,3.99,400);
hold on ; box on ; axis([min(an),max(an),-1,2]);
N = n^2;
for a=an
    x = key;
    for k= 1:20
        x = a*x*(1-x);
    end
    for k=1:N
        x=a*x*(1-x);
        xn(k)=x;
        b(k,1)=x;
    end
    plot(a*ones(1,N),xn,'k.','markersize',1);
end