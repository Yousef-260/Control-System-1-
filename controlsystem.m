k=10;
EXF=tf([1],[1 1])
F1=tf([1 0],[1 1])
F2= tf([0.1],[1 1])
FFeed= parallel(F1,F2)
ConFFeed=feedback(k,FFeed)
MConFFeed=minreal(ConFFeed)
system = series(ConFFeed,EXF)
step(system,'r--')
grid on
hold on
stepinfo(system)