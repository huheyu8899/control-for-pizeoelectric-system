close all;




%不同收敛时间
figure(7);
subplot(2,1,1)
y1=plot(t1(5:5001),Yeta1(5:5001),'--m','LineWidth',1.5);
hold on;y2=plot(t1,x1-xd1,'b','LineWidth',1.5);
hold on;y3=plot(t1(5:5001),-Yeta1(5:5001),'--m','LineWidth',1.5);
legend('\eta(t)','T=0.2','Location','northeast','FontSize',10);
%set(h,'Interpreter','latex','Location','northeast','FontWeight','normal','FontSize',10);
xlabel({'Time (s)'});
ylabel( 'Trajectory error (um)' );
xlim([0 5]);
ylim([-9 5]);
axes('position',[0.4 0.65 0.3 0.12]);
y1=plot(t1(5:5001),Yeta1(5:5001),'--m','LineWidth',1.5);
hold on;y2=plot(t1,x1-xd1,'b','LineWidth',1.5);
hold on;y3=plot(t1(5:5001),-Yeta1(5:5001),'--m','LineWidth',1.5);
ylim([-0.1 0.1]);
set(gca,'ytick',[-0.05 0 0.05],'yticklabel',{'-0.05','0','0.05'})
xlim([0 0.5]);

subplot(2,1,2)
plot(t2(5:5001),Yeta2(5:5001),'--m','LineWidth',1.5);
hold on;y2=plot(t2,x2-xd2,'b','LineWidth',1.5);
hold on;plot(t2(5:5001),-Yeta2(5:5001),'--m','LineWidth',1.5);
legend('\eta(t)','T=0.05','Location','northeast','FontSize',10);
%set(h,'Interpreter','latex','Location','northeast','FontWeight','normal','FontSize',10);
xlim([0 5]);
ylim([-9 5]);
xlabel({'Time (s)'});
ylabel( 'Trajectory error (um)' );
axes('position',[0.4 0.15 0.3 0.12]);
plot(t2(5:5001),Yeta2(5:5001),'--m','LineWidth',1.5);
hold on;y2=plot(t2,x2-xd2,'b','LineWidth',1.5);
hold on;plot(t2(5:5001),-Yeta2(5:5001),'--m','LineWidth',1.5);
ylim([-0.1 0.1]);
set(gca,'ytick',[-0.05 0 0.05],'yticklabel',{'-0.05','0','0.05'})
xlim([0 0.1]);

figure(8)
%不同稳态精度
subplot(2,1,1)

y1=plot(t1(5:5001),Yeta1(5:5001),'--m','LineWidth',1.5);
hold on;y2=plot(t1,x1-xd1,'b','LineWidth',1.5);
hold on;y3=plot(t1(5:5001),-Yeta1(5:5001),'--m','LineWidth',1.5);
h=legend('$\eta(t)$','$\varepsilon=0.05$');
set(h,'Interpreter','latex','Location','northeast','FontWeight','normal','FontSize',10);
xlabel({'Time/s'});
ylabel( 'Trajectory error/um' );
xlim([0 5]);
ylim([-9 5]);
axes('position',[0.4 0.65 0.3 0.12]);
y1=plot(t1(5:5001),Yeta1(5:5001),'--m','LineWidth',1.5);
hold on;y2=plot(t1,x1-xd1,'b','LineWidth',1.5);
hold on;y3=plot(t1(5:5001),-Yeta1(5:5001),'--m','LineWidth',1.5);
ylim([-0.1 0.1]);
set(gca,'ytick',[-0.05 0 0.05],'yticklabel',{'-0.05','0','0.05'})
xlim([4 5]);



subplot(2,1,2)
plot(t3(5:5001),Yeta3(5:5001),'--m','LineWidth',1.5);
hold on;plot(t3,x3-xd3,'b','LineWidth',1.5);
hold on;plot(t3(5:5001),-Yeta3(5:5001),'--m','LineWidth',1.5);
h=legend('$\eta(t)$','$\varepsilon=0.02$');
set(h,'Interpreter','latex','Location','northeast','FontWeight','normal','FontSize',10);
xlim([0 5]);
ylim([-9 5]);
xlabel({'Time/s'});
ylabel( 'Trajectory error/um' );
axes('position',[0.4 0.15 0.3 0.12]);
plot(t3(5:5001),Yeta3(5:5001),'--m','LineWidth',1.5);
hold on;plot(t3,x3-xd3,'b','LineWidth',1.5);
hold on;plot(t3(5:5001),-Yeta3(5:5001),'--m','LineWidth',1.5);
ylim([-0.04 0.04]);
set(gca,'ytick',[-0.02 0 0.02],'yticklabel',{'-0.02','0','0.02'})
xlim([4 5]);


