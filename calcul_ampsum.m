function calcul_ampsum(A1,A2,A3,f1,f2,f3,R1,R2,R3,R4,tipS)
set(gcf,'color','w');
imglpf=imread('1.-Summing-Amplifier-Ckt.jpg');
grid off;
subplot(2,3,2); 
imshow(imglpf);
Ts=uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.5 0.94 0.041 0.04],...
'String',"Amplificator Sumator");
R1s=uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.435 0.854 0.045 0.03],...
'String',R1,...
'Value',R1,...
'Callback','R1=str2num(get(gco,''String''));;calcul_ampsum(A1,A2,A3,f1,f2,f3,R1,R2,R3,R4,tipS)');
R2s=uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.435 0.778 0.045 0.03],...
'String',R2,...
'Value',R2,...
'Callback','R2=str2num(get(gco,''String''));calcul_ampsum(A1,A2,A3,f1,f2,f3,R1,R2,R3,R4,tipS)');
R3s=uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.435 0.695 0.045 0.03],...
'String',R3,...
'Value',R3,...
'Callback','R3=str2num(get(gco,''String''));calcul_ampsum(A1,A2,A3,f1,f2,f3,R1,R2,R3,R4,tipS)');
R4s=uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.522 0.78 0.045 0.03],...
'String',R4,...
'Value',R4,...
'Callback','R4=str2num(get(gco,''String''));calcul_ampsum(A1,A2,A3,f1,f2,f3,R1,R2,R3,R4,tipS)');
A1S=uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.345 0.85 0.02 0.03],...
'String',A1,...
'Value',A1,...
'Callback','A1=str2num(get(gco,''String''));calcul_ampsum(A1,A2,A3,f1,f2,f3,R1,R2,R3,R4,tipS)');
A2S=uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.345 0.77 0.02 0.03],...
'String',A2,...
'Value',A2,...
'Callback','A2=str2num(get(gco,''String''));calcul_ampsum(A1,A2,A3,f1,f2,f3,R1,R2,R3,R4,tipS)');
A3S=uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.345 0.69 0.02 0.03],...
'String',A3,...
'Value',A3,...
'Callback','A3=str2num(get(gco,''String''));;calcul_ampsum(A1,A2,A3,f1,f2,f3,R1,R2,R3,R4,tipS)');
A1t=uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.345 0.88 0.02 0.03],...
'String',"A1");
A2t=uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.345 0.8 0.02 0.03],...
'String',"A2");
A3t=uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.345 0.72 0.02 0.03],...
'String',"A3");
f1s=uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.367 0.85 0.041 0.03],...
'String',f1,...
'Value',f1,...
'Callback','f1=str2num(get(gco,''String''));calcul_ampsum(A1,A2,A3,f1,f2,f3,R1,R2,R3,R4,tipS)');
f1t=uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.367 0.88 0.041 0.03],...
'String',"Frecventa 1");
f2s=uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.367 0.77 0.041 0.03],...
'String',f2,...
'Value',f2,...
'Callback','f2=str2num(get(gco,''String''));calcul_ampsum(A1,A2,A3,f1,f2,f3,R1,R2,R3,R4,tipS)');
f2t=uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.367 0.8 0.041 0.03],...
'String',"Frecventa 2");
f3s=uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.367 0.69 0.041 0.03],...
'String',f3,...
'Value',f3,...
'Callback','f3=str2num(get(gco,''String''));calcul_ampsum(A1,A2,A3,f1,f2,f3,R1,R2,R3,R4,tipS)');
f3t=uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.367 0.72 0.041 0.03],...
'String',"Frecventa 3");
tipSe=uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.14 0.87 0.05 0.03],...
'String',"Tip Semnal");
fm=1000;
tm=0:1/100/fm:15*1/fm; 
tipSemnal=uicontrol('Style','PopupMenu',...
'Units','normalized',...
'Position',[0.14 0.80 0.05 0.07],...
'String','DC|SIN|DR|TR',...
'Value',tipS,...
'Callback','tipS=get(gco,''Value'');calcul_ampsum(A1,A2,A3,f1,f2,f3,R1,R2,R3,R4,tipS)');

switch(tipS)
    case 1
        v1=A1*ones(length(tm));
        v2=A2*ones(length(tm));
        v3=A3*ones(length(tm));
    case 2
        v1=A1*sin(2*pi*f1*tm);
        v2=A2*sin(2*pi*f2*tm);
        v3=A3*sin(2*pi*f3*tm);
    case 3
        v1=A1*sign(sin(2*pi*f1*tm));
        v2=A2*sign(sin(2*pi*f2*tm));
        v3=A3*sign(sin(2*pi*f3*tm));
    case 4
            v1=A1*sawtooth(2*pi*f1*tm,1/2);
            v2=A2*sawtooth(2*pi*f2*tm,1/2);
            v3=A2*sawtooth(2*pi*f3*tm,1/2);

    
end
    vo=-R4*((v1/R1)+(v2/R2)+(v3/R3));
subplot(2,3, 4);
plot(tm,v1,'b');
title("V1");
subplot(2,3,5);
plot(tm,v2,'b');
title("V2");
subplot(2,3,6);
plot(tm,v3,'b');
title("V3");
subplot(2,3,3);
plot(tm,vo,'b');
title("Vout");
if tipS ~=1
slrt=uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.2 0.87 0.05 0.04],...
'String',"Slewrate-ul pentru semnal:");
slrtt=uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.2 0.80 0.05 0.07],...
'String',slewrate(vo)); %cati volti pe ms urca semnalul
else
    slrtt=uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.2 0.80 0.05 0.07],...
'String',"Nu se poate calcula pentru semnal DC");
end
end
