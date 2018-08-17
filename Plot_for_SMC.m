%% Plot
%% 
FontSize = 14;

figure('name','The tracking results of AOA under AQSMC')
subplot(2,1,1)
plot(simout_alpha.time,50*ones(1,length(simout_alpha.time)),'r-.','linewidth',4); hold on;
plot(simout_alpha.time,simout_alpha.signals.values,'b-','linewidth',2); hold on;
grid on;
%xlabel('Time [s]','interpreter','latex','fontsize',FontSize);
title('Angle of Attack: $\alpha$ (degree)','interpreter','latex','fontsize',FontSize);
legend({'$\alpha_d$','$\alpha$'},'interpreter','latex','fontsize',FontSize);
set(gca,'Fontname', 'Times','FontSize',FontSize);
subplot(2,1,2)
plot(simout_q.time,180/pi*simout_q.signals.values,'b-','linewidth',2); hold on;
grid on;
xlabel('Time [s]','interpreter','latex','fontsize',FontSize);
title('Angular rate: $q$ (degree/s)','interpreter','latex','fontsize',FontSize);
legend({'q'},'interpreter','latex','fontsize',FontSize);
set(gca,'Fontname', 'Times','FontSize',FontSize);

figure('name','The control input under AQSMC')
subplot(2,1,1)
plot(simout_dele.time,25*ones(1,length(simout_dele.time)),'r-.','linewidth',4); hold on;
plot(simout_dele.time,-25*ones(1,length(simout_dele.time)),'k-.','linewidth',4); hold on;
plot(simout_dele.time,simout_dele.signals.values,'b-','linewidth',2); hold on;
grid on;
xlabel('Time [s]','interpreter','latex','fontsize',FontSize);
title('Control Input: $\delta_{e}^{\textrm{ref}}$ (degree)','interpreter','latex','fontsize',FontSize);
legend({'$\delta_{e}^{\max}$','$\delta_{e}^{\min}$','$\delta_{e}^{\textrm{ref}}$'},'interpreter','latex','fontsize',FontSize);
set(gca,'Fontname', 'Times','FontSize',FontSize);
subplot(2,1,2)
plot(simout_Gamma.time,simout_Gamma.signals.values(:,1),'b-','linewidth',2); hold on;
grid on;
xlabel('Time [s]','interpreter','latex','fontsize',FontSize);
title('Adaptive Gain: $\hat{\Gamma}$','interpreter','latex','fontsize',FontSize);
legend({'$\hat{\Gamma}$'},'interpreter','latex','fontsize',FontSize);
set(gca,'Fontname', 'Times','FontSize',FontSize);