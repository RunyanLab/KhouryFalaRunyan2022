clear all
load ac
load name
load ppc
base=cd;
acnn=[];
acrn=[];
acrr=[];
acall=[];

for i=1:size(ac,2)
    for n=1:size(ac{i},2)
        try
            load([base '\noise_correlations\' name{i} ' ' ac{i}{n}.date ' ac.mat'],'nn_bin10fr','rn_bin10fr','rr_bin10fr');
            load ac
            acnn=cat(2,acnn,nn_bin10fr);
            acrn=cat(2,acrn,rn_bin10fr);
            acrr=cat(2,acrr,rr_bin10fr);
            acall=cat(2,acall,[nn_bin10fr rn_bin10fr rr_bin10fr]);

        end
    end
end

ppcnn=[];
ppcrn=[];
ppcrr=[];
ppcall=[];
for i=1:size(ppc,2)
    for n=1:size(ppc{i},2)
        try
            load([base '\noise_correlations\' name{i} ' ' ppc{i}{n}.date ' ppc.mat'],'nn_bin10fr','rn_bin10fr','rr_bin10fr');
            ppcnn=cat(2,ppcnn,nn_bin10fr);
            ppcrn=cat(2,ppcrn,rn_bin10fr);
            ppcrr=cat(2,ppcrr,rr_bin10fr);
            ppcall=cat(2,ppcall,[nn_bin10fr rn_bin10fr rr_bin10fr]);
        catch
            [name{i} ' ' ppc{i}{n}.date]
        end
    end
end


close all


figure
hold on
cdfplot_CFK(acall,[215 25 28]/255,2,'-')
cdfplot_CFK(ppcall,[44 123 182]/255,2,'-')

legend('AC','PPC','location','southeast')
axis('square')
xlabel('pairwise noise correlation','fontsize',16)
ylabel('cumulative fraction','fontsize',16)
xlim([-.1 .4])
title([])
a=gca;
a.FontSize=16;


figure
hold on

cdfplot_CFK(ppcnn,[44 123 182]/255,2,'-')
cdfplot_CFK(acnn,[215 25 28]/255,2,'-')
cdfplot_CFK(ppcrn,[44 123 182]/255,2,'-.')
cdfplot_CFK(acrn,[215 25 28]/255,2,'-.')

cdfplot_CFK(ppcrr,[44 123 182]/255,2,':')

cdfplot_CFK(acrr,[215 25 28]/255,2,':')

axis('square')
xlabel('pairwise noise correlation','fontsize',16)
ylabel('cumulative fraction','fontsize',16)
xlim([-.1 .4])
title([])
a=gca;
a.FontSize=16;


figure
hold on

cdfplot_CFK(acnn,[215 25 28]/255,2,'-')
cdfplot_CFK(acrn,[215 25 28]/255,2,'-.')


cdfplot_CFK(acrr,[215 25 28]/255,2,':')
legend('AC Non-SOM/Non-SOM','AC Non-SOM/SOM','AC SOM/SOM','location','southeast')

axis('square')
xlabel('pairwise noise correlation','fontsize',16)
ylabel('cumulative fraction','fontsize',16)
xlim([-.1 .4])
title([])
a=gca;
a.FontSize=16;

figure
hold on

cdfplot_CFK(ppcnn,[44 123 182]/255,2,'-')
cdfplot_CFK(ppcrn,[44 123 182]/255,2,'-.')
cdfplot_CFK(ppcrr,[44 123 182]/255,2,':')
legend('PPC Non-SOM/Non-SOM','PPC Non-SOM/SOM','PPC SOM/SOM','location','southeast')

axis('square')
xlabel('pairwise noise correlation','fontsize',16)
ylabel('cumulative fraction','fontsize',16)
xlim([-.1 .4])
title([])
a=gca;
a.FontSize=16;
