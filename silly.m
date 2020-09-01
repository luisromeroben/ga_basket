x = 0:1e-2:1;
y = x;

figure;hold on
for i=1:length(x)
    for j=1:length(y)
%         x(i)
%         y(j)
        z = sqrt(1-x(i)^3+y(j)^2);
        if z>1
            z=1;
        elseif z<0
            z=0;
        end
        plot(x(i),y(j),'Marker','.','Color',[x(i) y(j) z]);
    end
end