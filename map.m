%% Creación del mapa %%

function map(l,w,color)

figure;hold on
rectangle('Position',[0 0 l 1],'FaceColor',color,'EdgeColor',color);
rectangle('Position',[0 0 1 l],'FaceColor',color,'EdgeColor',color);

for i=1:w
    rectangle('Position',[i*(l-1)/w 0 1 l],'FaceColor',color,'EdgeColor',color);
    rectangle('Position',[0 i*(l-1)/w l 1],'FaceColor',color,'EdgeColor',color);
end

end