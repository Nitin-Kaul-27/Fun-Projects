% This code uses Fourier Series equation to generate multiple signals using only sin function
% As fourier series says: Every periodic function can be created using sum of sinusoidal functions having frequencies which are integral multiple of fundamental frequency
% Using multiple sin function of multiple frequency and amplitude, 4 different signals are generated
% Square signal, Sawtooth signal, Triangular signal, Impulse signal


%  Fourier series of square signal
%  Formula = sin((2n?1)*x)/(2n?1)
t=linspace(0,2*pi,1000);
X=0;
for i=1:30
    x=(1/((2*i)-1))*sin(((2*i)-1)*t);
    X=[X+x];
    plot(X)
    pause(0.3)
end
plot(t,X)

%% 
%  Fourier series of sawtooth signal
%  Formula = sin(n*x)/n
t=linspace(0,4*pi,1000);
X=0;
for i=1:30
    x=(sin(i*t))/i;
    X=[X+x];
    plot(X)
    pause(0.3)
end
plot(t,X)


%% 
%  Fourier series of impulse train signal
%  Formula = sin(n*x)*0.1
t=linspace(0,8*pi,1000);
X=0;
for i=1:40
    x=(sin(i*t))/0.1;
    X=[X+x];
    plot(X)
    pause(0.3)
end
plot(t,X)


%%
%  Fourier series of traingle signal
%  Formula = sin((2n-1)*x)*(-1)^n/(2n-1)^2
t=linspace(0,2*pi,1000);
X=0;
for i=1:10
    x=(sin((2*i-1)*t)*(-1)^i/(2*i-1)^2);
    X=[X+x];
    plot(X)
    pause(0.55)
end
plot(t,X)


