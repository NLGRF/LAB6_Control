clc
% PD
Gc = tf([4,45.2],[1])

Gp = tf([20],[1,12,20])

G  = Gc * Gp

F  = feedback(G,1,-1)

figure(1)
rlocus(G)

figure(2)
step(F)

% PI
Gc = tf([20,46.74],[1,0])

Gp = tf([20],[1,12,20])

G  = Gc * Gp

F  = feedback(G,1,-1)

figure(3)
rlocus(G)

figure(4)
step(F)

% PID
Gc = tf([0.4,2.88,5],[1,0])

Gp = tf([20],[1,12,20])

G  = Gc * Gp

F  = feedback(G,1,-1)

figure(5)
rlocus(G)

figure(6)
step(F)

