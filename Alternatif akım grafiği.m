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

r1=input('1.Direnc Degerini Giriniz:');


C=input('Kondansatorun Degerini Giriniz:');
L=input('Bobinin Degerini Giriniz:');
Xc=1/(2*3.14*f*C);
Xl=w*L;
Zes=sqrt((r1)^2+(Xl-1/Xc)^2);
I=E/Zes;
fprintf('Devrenin Akýmý :%fdir.',I)
% ÖDEVÝ BURAYA YAPTIM DAHA DEVAMI VAR.. 
for i=1:b
E=a*sin(w*i);
plot(i,E,'r*');
hold on
grid on
end