%Skripta izdvaja ljepši dio mjerenja
p1ang = csvread('plot1_roll.csv',1,0);
p1rate = csvread('plot1_roll_rate.csv',1,0);

p2ang = csvread('plot2_roll.csv',1,0);
p2rate = csvread('plot2_roll_rate.csv',1,0);

%% plot eksperiment 1 
%kut
plot(p1ang(1:(find(p1ang(:,1)>58.0,1,'first')),1),p1ang(1:(find(p1ang(:,1)>58.0,1,'first')),2)); % referenca
hold on; grid on;
plot(p1ang(1:(find(p1ang(:,3)>58.0,1,'first')),3),p1ang(1:(find(p1ang(:,3)>58.0,1,'first')),4)); % mjerenje
axis tight 
legend('Referenca','Mjerenje');
xlabel('t [s]');
ylabel('\theta [rad]');
%brzina 
figure 
plot(p1rate(1:(find(p1rate(:,3)>58.0,1,'first')),3),p1rate(1:(find(p1rate(:,3)>58.0,1,'first')),4)); % referenca
hold on; grid on;
plot(p1rate(1:(find(p1rate(:,1)>58.0,1,'first')),1),p1rate(1:(find(p1rate(:,1)>58.0,1,'first')),2)); % mjerenje
axis tight 
legend('Referenca','Mjerenje');
xlabel('t [s]');
ylabel('\omega [rad/s]');


%% plot eksperiment 2
%kut 
figure
plot(p2ang(1:(find(p2ang(:,1)>58.0,1,'first')),1),p2ang(1:(find(p2ang(:,1)>58.0,1,'first')),2)); % referenca
hold on; grid on;
plot(p2ang(1:(find(p2ang(:,3)>58.0,1,'first')),3),p2ang(1:(find(p2ang(:,3)>58.0,1,'first')),4)); % mjerenje
axis tight 
legend('Referenca','Mjerenje');
xlabel('t [s]');
ylabel('\theta [rad]');
%brzina 
figure 
plot(p2rate(1:(find(p2rate(:,3)>58.0,1,'first')),3),p2rate(1:(find(p2rate(:,3)>58.0,1,'first')),4)); % referenca
hold on; grid on;
plot(p2rate(1:(find(p2rate(:,1)>58.0,1,'first')),1),p2rate(1:(find(p2rate(:,1)>58.0,1,'first')),2)); % mjerenje
axis tight 
legend('Referenca','Mjerenje');
xlabel('t [s]');
ylabel('\omega [rad/s]');












