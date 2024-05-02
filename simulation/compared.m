close all;


%轨迹跟踪
figure(2)
plot(t1,xd1,'k','LineWidth',1.5);
hold on;plot(t0,x0,'r','LineWidth',1.5);
hold on;plot(t1,x1,'b','LineWidth',1.5);
legend('Desired trajectroy','Compared controller','Proposed controller','Location','northeast');
xlabel({'Time (s)'});
ylabel( 'Trajectory (um)' );
xlim([0 5]);
ylim([-3.5 2.1]);
axes('position',[0.2 0.2 0.3 0.2]);
plot(t1,xd1,'k','LineWidth',1.5);
hold on;plot(t0,x0,'r','LineWidth',1.5);
hold on;plot(t1,x1,'b','LineWidth',1.5);
xlim([0 0.5]);
axes('position',[0.55 0.2 0.3 0.2]);
plot(t1,xd1,'k','LineWidth',1.5);
hold on;plot(t0,x0,'r','LineWidth',1.5);
hold on;plot(t1,x1,'b','LineWidth',1.5);
xlim([3.250 3.75]);

%误差曲线
figure(3);
plot(t1(100:5001),Yeta1(100:5001),'--m','LineWidth',1.5);
hold on;plot(t0,x0-xd0,'r','LineWidth',1.5);
hold on;plot(t1,x1-xd1,'b','LineWidth',1.5);
hold on;plot(t1(100:5001),-Yeta1(100:5001),'--m','LineWidth',1.5);
legend('\eta(t)','Compared controller','Proposed controller','Location','northeast');
%set(h,'Interpreter','latex','Location','northeast','FontWeight','normal','FontSize',10);
%legend('\eta (t)','PID controller','Proposed controller','Location','northeast');
%set('Interpreter','latex','Location','northeast','FontWeight','normal','FontSize',10);
xlabel({'Time (s)'});
ylabel( 'Trajectory error (um)' );
xlim([0 5]);
ylim([-10 5]);
axes('position',[0.22 0.2 0.3 0.2]);
plot(t1(100:5001),Yeta1(100:5001),'--m','LineWidth',1.5);
hold on;plot(t0,x0-xd0,'r','LineWidth',1.5);
hold on;plot(t1,x1-xd1,'b','LineWidth',1.5);
hold on;plot(t1(100:5001),-Yeta1(100:5001),'--m','LineWidth',1.5);
xlim([0 0.5]);
ylim([-1 1]);
axes('position',[0.57 0.2 0.3 0.2]);
plot(t1(100:5001),Yeta1(100:5001),'--m','LineWidth',1.5);
hold on;plot(t0,x0-xd0,'r','LineWidth',1.5);
hold on;plot(t1,x1-xd1,'b','LineWidth',1.5);
hold on;plot(t1(100:5001),-Yeta1(100:5001),'--m','LineWidth',1.5);
xlim([4 5]);
ylim([-0.2 0.2]);
set(gca,'ytick',[-0.1 0 0.1],'yticklabel',{'-0.1','0','0.1'})

figure(5);
subplot(2,1,1)

y1=plot(t1(5:5001),F1(5:5001),'--m','LineWidth',1.5);
hold on;y2=plot(t1,x1,'b','LineWidth',1.5);
hold on;y3=plot(t1(5:5001),-F1(5:5001),'--m','LineWidth',1.5);
h=legend('Constraint of $x$','Real value of $x$','Location','northeast');
set(h,'Interpreter','latex','Location','northeast','FontWeight','normal','FontSize',10);
xlabel({'Time (s)'});
ylabel( 'Trajectory (um/s)' );
xlim([0 5]);
ylim([-6 6]);
subplot(2,1,2)
vel_const(1:5001)=10;
y1=plot(t1(5:5001),F2(5:5001),'--m','LineWidth',1.5);
hold on;y2=plot(t1,dx1,'b','LineWidth',1.5);
hold on;y3=plot(t1(5:5001),-F2(5:5001),'--m','LineWidth',1.5);
h=legend('Constraint of $\dot x$','Real valude $\dot x$','Location','northeast');
set(h,'Interpreter','latex','Location','northeast','FontWeight','normal','FontSize',10);
xlabel({'Time (s)'});
ylabel( 'Velocity (um/s)' );
xlim([0 5]);
ylim([-30 30]);