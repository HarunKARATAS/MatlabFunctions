clear all; clc
f=input('Lutfen Okul Numaranizin Son Iki Hanesini Giriniz:');
if f<1 | f>=100
    disp('Lutfen Okul Numaranizin Sadece Son Iki Hanesini Giriniz:')
else
        while f<50
        f=f*2;
        end
        fprintf('Devrenin Frekansi:%d\n',f)
end
a=input('Luften Giris Geriliminin Maksimum Degeri:');
b=input('Lutfen Gerilimin Devreye Kac Saniye Uygulanacak:');
w=2*3.14*f;
E=a*sin(w*b);
fprintf('Devrenin Gerilimi:%f  dur\n',E)

r1=input('Direnc Degerini Giriniz:');


C=input('Kondansatorun Degerini Giriniz:');
L=input('Bobinin Degerini Giriniz:');
Xc=1/(2*3.14*f*C);
Xl=w*L;
Zes=sqrt((r1)^2+(Xl-Xc)^2);
I=E/Zes;
fprintf('Devrenin Ak�m� :%fdir.\n',I);
fazFarki = atan((L-C)/r1);
fprintf('Faz Fark� : %f\n',fazFarki);
pAktif=cos(fazFarki)*E*I;
fprintf('Aktif : %f \n',pAktif);
qReaktif = E*I*sin(fazFarki);
fprintf('Reaktif : %f',qReaktif);


% �DEV� BURAYA YAPTIM DAHA DEVAMI VAR.. 
%Ak�m
for i=1:b:1

I=E/Zes;
figure(2);
plot(i,I,'b+');
hold on
grid on
end
%Gerilim
for i=1:b
E=a*sin(w*i);
figure(1);
plot(i,E,'r*');
hold on
grid on
end
