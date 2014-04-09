function y = myFunc(x)
y=0.5-x*exp(-(x*x));
start = 0;                  % Aral���n Ba�lang�c� / start of interval
finish = 2;                 % Aral���n Sonu / finish of interval
eS=0.000001;                % Hata Pay� / accuracy value
iteration=50;               % Maksimum iterasyon say�s� / maximum iteration value
goldenP=((sqrt(5)-1)/2);    % Alt�n Oran yakla��k 0.618 / Golden proportion around 0.618 
c=0;                        % �terasyon say�s� / number of iterations

x1= start + (1-goldenP)*(finish-start); % x de�erleri hesaplan�yor / computing x values
x2 = start + goldenP*(finish-start);

f_x1=myFunc(x1);               % Fonksiyonun x noktalar�ndaki de�erleri hesaplan�yor
f_x2=myFunc(x2);               % computing values in x points
plot(x1,f_x1,'rx')          % �izdiriliyor
plot(x2,f_x2,'rx')          % plotting


while((abs(finish-start)>eS) && (c<iteration))
    c=c+1;
    if (f_x1<f_x2)
        finish=x2;
        x2=x1;
        x1=start + (1- goldenP)*(finish-start);
        
        f_x1 = myFunc(x1);
        f_x2 = myFunc(x2);
        
        plot(x1,f_x1,'rx')
    else
        start = x1;
        x1=x2;
        x2 = start + goldenP*(finish-start);
        
        f_x1 = myFunc(x1);
        f_x2 = myFunc(x2);
        
        plot(x2,f_x2,'rx');
    end
    c=c+1;
end

% en k���k noktay� se�me
% chooses minimum point
if (f_x1 < f_x2)
    sprintf('xmin=%f',x1)
    sprintf('F(x_min = %f)' , f_x1)
    plot(x1,fx1,'ro')
else
    sprintf('x_min=%f', x2)
    sprintf('F(x_min)=%f ', f_x2)
    plot(x2,f_x2,'ro')
end
    
