clear allT=load('calor.dat');for k=2:size(T,1)clfplot(T(1,:),'k--')hold on plot(T(k,:),'k')drawnowend 