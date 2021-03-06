x0=[-1;-0.2;0.5];
tspan=[0:0.001:80];
[T,X]=ode45('equation',tspan,x0);
figure(1);
subplot(3,1,1),plot(T,X(:,1),'r');
xlabel('t');
ylabel('x');
subplot(3,1,2),plot(T,X(:,2),'r');
xlabel('t');
ylabel('y');
subplot(3,1,3),plot(T,X(:,3),'r');
xlabel('t');
ylabel('z');

figure(2);
plot(X(30000:end,1),X(30000:end,2));
xlabel('x');
ylabel('y');

figure(3);
plot(X(30000:end,1),X(30000:end,3));
xlabel('x');
ylabel('z');

figure(4);
plot(X(30000:end,2),X(30000:end,3));
xlabel('y');
ylabel('z');

figure(5);
plot3(X(30000:end,1),X(30000:end,2),X(30000:end,3));
xlabel('y');
ylabel('z');