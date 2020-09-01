% Función de evaluación %

function eval = evalind(P,h,center,N)

g = 9.81;

for i=1:N
    %y_x(i,:) = P(i,1)*x.^2 + P(i,2)*x + P(i,3);
    %y_x = x.*tand(P(i,1))-0.5*g*(x.^2/(P(i,2).^2*(cosd(P(i,1)))^2));
    r = roots([0.5*g*(1/(P(i,2).^2*(cosd(P(i,1)))^2)) -tand(P(i,1)) h]);
    err = abs(r-center);
    [~,I] = min(err);
    eval(i,:) = 1/err(I);
end

end