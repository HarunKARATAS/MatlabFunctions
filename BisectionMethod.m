a=input('Fonksiyonu Giriniz:','s');

f=inline(a);

xl=input('Alt Sýnýr:') ;

xu=input('Üst Sýnýr:');

tol=input('Hata Payý(Tavsiye edilen 0.001):');

if f(xu)*f(xl)<0

else

    fprintf('Yanlýþ Tahmin!Yeni tahmin giriniz\n');

    xl=input('Alt Sýnýr:\n') ;

    xu=input('Üst Sýnýr:\n');

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

str = ['Kök: ', num2str(xr), '']