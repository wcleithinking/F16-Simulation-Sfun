%% Plot
%% 
FontSize = 14;

figure('name','ESO results for alpha')
subplot(2,1,1)
plot(simout_alpha.time,simout_alpha.signals.values,'r-','linewidth',2); hold on;
plot(simout_hat_alpha.time,180/pi*simout_hat_alpha.signals.values,'b-.','linewidth',2); hold on;
grid on;
%xlabel('Time [s]','interpreter','latex','fontsize',FontSize);
title('Angle of Attack (degree)','interpreter','latex','fontsize',FontSize);
legend({'$\alpha$','$\hat{\alpha}$'},'interpreter','latex','fontsize',FontSize);
set(gca,'Fontname', 'Times','FontSize',FontSize);
subplot(2,1,2)
plot(simout_hat_d_alpha.time,simout_hat_d_alpha.signals.values,'b-.','linewidth',2); hold on;
grid on;
title('Disturbance in $\dot{\alpha}$','interpreter','latex','fontsize',FontSize);
legend({'$\hat{d}_{\alpha}$'},'interpreter','latex','fontsize',FontSize);
set(gca,'Fontname','Times','FontSize',FontSize);

figure('name','ESO results for beta')
subplot(2,1,1)
plot(simout_beta.time,simout_beta.signals.values,'r-','linewidth',2); hold on;
plot(simout_hat_beta.time,180/pi*simout_hat_beta.signals.values,'b-.','linewidth',2); hold on;
grid on;
title('Angle of SlideSlip (degree)','interpreter','latex','fontsize',FontSize);
legend({'$\beta$','$\hat{\beta}$'},'interpreter','latex','fontsize',FontSize);
set(gca,'Fontname', 'Times','FontSize',FontSize);
subplot(2,1,2)
plot(simout_hat_d_beta.time,simout_hat_d_beta.signals.values,'b-.','linewidth',2); hold on;
grid on;
title('Disturbance in $\dot{\beta}$','interpreter','latex','fontsize',FontSize);
legend({'$\hat{d}_{\beta}$'},'interpreter','latex','fontsize',FontSize);
set(gca,'Fontname','Times','FontSize',FontSize);