a=input('Fonksiyonu Giriniz:','s');

f=inline(a);

xl=input('Alt S�n�r:') ;

xu=input('�st S�n�r:');

tol=input('Hata Pay�(Tavsiye edilen 0.001):');

if f(xu)*f(xl)<0

else

    fprintf('Yanl�� Tahmin!Yeni tahmin giriniz\n');

    xl=input('Alt S�n�r:\n') ;

    xu=input('�st S�n�r:\n');

end

for i=2:1000

xr=(xu+xl)/2;

if f(xu)*f(xr)<0

    xl=xr;

else

    xu=xr;

end

if f(xl)*f(xr)<0

    xu=xr;

else

    xl=xr;

end

xnew(1)=0;

xnew(i)=xr;

if abs((xnew(i)-xnew(i-1))/xnew(i))<tol,break,end

end

str = ['K�k: ', num2str(xr), '']