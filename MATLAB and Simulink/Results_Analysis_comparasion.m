clc;
close all;
time=out.tout;
Ia_dual=out.yout{1}.Values.iA.Data;
n_dual=9.55*out.yout{1}.Values.w.Data;
Torque_out_dual=out.yout{1}.Values.Te.Data;
Torque_ref_dual=out.yout{2}.Values.Data;
n_ref_dual=out.yout{3}.Values.Data;
Ia_single=out.yout{5}.Values.iA.Data;
n_single=9.55*out.yout{5}.Values.w.Data;
Torque_out_single=out.yout{5}.Values.Te.Data;
Torque_ref_single=out.yout{6}.Values.Data;
n_ref_single=out.yout{7}.Values.Data;
figure;
% Plot the dual speed
plot(time, n_dual, 'b', 'LineWidth', 1);
hold on;
% Plot the reference speed
plot(time, n_ref_dual, 'r', 'LineWidth', 1);
hold on;
plot(time, n_single, 'g', 'LineWidth', 1);
hold off;
xlabel('Time (s)');
ylabel('Speed (rpm)');
title('Speed responce comparasion');
legend('Dual loop', 'Reference Speed','Single loop');
figure;
plot(time, Ia_dual,'b','LineWidth',1);
hold on;
plot(time, Ia_single,'g','LineWidth',1);
xlabel('Time (s)');
ylabel('Amature Current (A)');
title('Amature current responce comparasion');
legend('Dual loop','Single loop');
figure;
plot(time, Torque_out_dual,'b','LineWidth',1);
hold on;
plot(time, Torque_out_single,'r','LineWidth',1);
hold on;
plot(time, Torque_ref_single,'g','LineWidth',1);
xlabel('Time (s)');
ylabel('Electric Torque ($N\cdot M$)','Interpreter','latex');
title('Step disturbance in loads');
legend('Dual loop','Single loop','Reference value');