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

%% eksperiment s rotorima
%unzip
unzip('mjerenja_s_rotorima.zip');

%ucitaj podatke iz fajla
rot_ang_mv = csvread('bag_roll_mv.txt',1,0);
rot_ang_ref = csvread('bag_roll_reff.txt',1,0);
rot_rate_mv = csvread('bag_roll_rate_mv.txt',1,0);
rot_rate_ref = csvread('bag_roll_rate_reff.txt',1,0);

%napravi offset vremena na 0 i skaliranje na sekunde 
rot_ang_mv(:,1) = rot_ang_mv(:,1)-ones(length(rot_ang_mv(:,1)),1)*rot_ang_mv(1,1);
rot_ang_mv(:,1) = rot_ang_mv(:,1)/1e9;

rot_ang_ref(:,1) = rot_ang_ref(:,1)-ones(length(rot_ang_ref(:,1)),1)*rot_ang_ref(1,1);
rot_ang_ref(:,1) = rot_ang_ref(:,1)/1e9;

rot_rate_mv(:,1) = rot_rate_mv(:,1)-ones(length(rot_rate_mv(:,1)),1)*rot_rate_mv(1,1);
rot_rate_mv(:,1) = rot_rate_mv(:,1)/1e9;

rot_rate_ref(:,1) = rot_rate_ref(:,1)-ones(length(rot_rate_ref(:,1)),1)*rot_rate_ref(1,1);
rot_rate_ref(:,1) = rot_rate_ref(:,1)/1e9;

%sad plotaj
figure
plot(rot_ang_ref(:,1),rot_ang_ref(:,2));
hold on; grid on;
plot(rot_ang_mv(:,1),rot_ang_mv(:,2));
axis tight 
legend('Referenca','Mjerenje');
xlabel('t [s]');
ylabel('\theta [rad]');

figure
plot(rot_rate_ref(:,1),rot_rate_ref(:,2));
hold on; grid on;
plot(rot_rate_mv(:,1),rot_rate_mv(:,2));
axis tight 
legend('Referenca','Mjerenje');
xlabel('t [s]');
ylabel('\omega [rad/s]');

delete 'bag_roll_mv.txt' 'bag_roll_reff.txt' 'bag_roll_rate_mv.txt' 'bag_roll_rate_reff.txt'


