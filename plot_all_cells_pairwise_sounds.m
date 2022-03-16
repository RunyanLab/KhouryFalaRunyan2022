close all

clear all
load('all_cell_pairwise_sounds_shuf.mat')
load('all_cell_pairwise_sounds.mat')

close all
figure
hold on
scatter(0,nanmean(ppcnn1),100,'o','markeredgecolor',[44 123 182]/255,'linewidth',1.25)
plot([0 0],ppcnn1_ci,'color',[44 123 182]/255,'linewidth',1.25);

scatter(100,nanmean(ppcnn2),100,'o','markeredgecolor',[44 123 182]/255,'linewidth',1.25)
plot([100 100],ppcnn2_ci,'color',[44 123 182]/255,'linewidth',1.25);

scatter(200,nanmean(ppcnn3),100,'o','markeredgecolor',[44 123 182]/255,'linewidth',1.25)
plot([200 200],ppcnn3_ci,'color',[44 123 182]/255,'linewidth',1.25);

scatter(300,nanmean(ppcnn4),100,'o','markeredgecolor',[44 123 182]/255,'linewidth',1.25)
plot([300 300],ppcnn4_ci,'color',[44 123 182]/255,'linewidth',1.25);


ppcnn_f=fit([0:100:300]',[nanmean(ppcnn1) nanmean(ppcnn2) nanmean(ppcnn3) nanmean(ppcnn4) ]','exp1');
x=plot(ppcnn_f);
x.Color=[44 123 182]/255;
x.LineWidth=1.25;
legend('off')

scatter(0,nanmean(nanmean(ppcnn1_shuf)),100,'o','markeredgecolor',[.25 .25 .25],'linewidth',1.25)
plot([0 0],[prctile(nanmean(ppcnn1_shuf,2),5) prctile(nanmean(ppcnn1_shuf,2),95)],'color',[.25 .25 .25],'linewidth',1.25);

scatter(100,nanmean(nanmean(ppcnn2_shuf)),100,'o','markeredgecolor',[.25 .25 .25],'linewidth',1.25)
plot([100 100],[prctile(nanmean(ppcnn2_shuf,2),5) prctile(nanmean(ppcnn2_shuf,2),95)],'color',[.25 .25 .25],'linewidth',1.25);

scatter(200,nanmean(nanmean(ppcnn3_shuf)),100,'o','markeredgecolor',[.25 .25 .25],'linewidth',1.25)
plot([200 200],[prctile(nanmean(ppcnn3_shuf,2),5) prctile(nanmean(ppcnn3_shuf,2),95)],'color',[.25 .25 .25],'linewidth',1.25);

scatter(300,nanmean(nanmean(ppcnn4_shuf)),100,'o','markeredgecolor',[.25 .25 .25],'linewidth',1.25)
plot([300 300],[prctile(nanmean(ppcnn4_shuf,2),5) prctile(nanmean(ppcnn4_shuf,2),95)],'color',[.25 .25 .25],'linewidth',1.25);


ppcnn_shuf_f=fit([0:100:300]',[nanmean(nanmean(ppcnn1_shuf)) nanmean(nanmean(ppcnn2_shuf)) nanmean(nanmean(ppcnn3_shuf)) nanmean(nanmean(ppcnn4_shuf)) ]','exp1');
x=plot(ppcnn_shuf_f);
x.Color=[.25 .25 .25];
x.LineWidth=1.25;
legend('off')

scatter(0,nanmean(acnn1),100,'o','markeredgecolor',[215 25 28]/255,'linewidth',1.25)
plot([0 0],acnn1_ci,'color',[215 25 28]/255,'linewidth',1.25);

scatter(100,nanmean(acnn2),100,'o','markeredgecolor',[215 25 28]/255,'linewidth',1.25)
plot([100 100],acnn2_ci,'color',[215 25 28]/255,'linewidth',1.25);

scatter(200,nanmean(acnn3),100,'o','markeredgecolor',[215 25 28]/255,'linewidth',1.25)
plot([200 200],acnn3_ci,'color',[215 25 28]/255,'linewidth',1.25);

scatter(300,nanmean(acnn4),100,'o','markeredgecolor',[215 25 28]/255,'linewidth',1.25)
plot([300 300],acnn4_ci,'color',[215 25 28]/255,'linewidth',1.25);

acnn_f=fit([0:100:300]',[nanmean(acnn1) nanmean(acnn2) nanmean(acnn3) nanmean(acnn4) ]','exp1')
x=plot(acnn_f);
x.Color=[215 25 28]/255;
x.LineWidth=1.25;
legend('off')

scatter(0,nanmean(nanmean(acnn1_shuf)),100,'o','markeredgecolor',[.75 .75 .75],'linewidth',1.25)
plot([0 0],[prctile(nanmean(acnn1_shuf,2),5) prctile(nanmean(acnn1_shuf,2),95)],'color',[.75 .75 .75],'linewidth',1.25);

scatter(100,nanmean(nanmean(acnn2_shuf)),100,'o','markeredgecolor',[.75 .75 .75],'linewidth',1.25)
plot([100 100],[prctile(nanmean(acnn2_shuf,2),5) prctile(nanmean(acnn2_shuf,2),95)],'color',[.75 .75 .75],'linewidth',1.25);

scatter(200,nanmean(nanmean(acnn3_shuf)),100,'o','markeredgecolor',[.75 .75 .75],'linewidth',1.25)
plot([200 200],[prctile(nanmean(acnn3_shuf,2),5) prctile(nanmean(acnn3_shuf,2),95)],'color',[.75 .75 .75],'linewidth',1.25);

scatter(300,nanmean(nanmean(acnn4_shuf)),100,'o','markeredgecolor',[.75 .75 .75],'linewidth',1.25)
plot([300 300],[prctile(nanmean(acnn4_shuf,2),5) prctile(nanmean(acnn4_shuf,2),95)],'color',[.75 .75 .75],'linewidth',1.25);

acnn_shuf_f=fit([0:100:300]',[nanmean(nanmean(acnn1_shuf)) nanmean(nanmean(acnn2_shuf)) nanmean(nanmean(acnn3_shuf)) nanmean(nanmean(acnn4_shuf))]','exp1');
x=plot(acnn_shuf_f);
x.Color=[.75 .75 .75];
x.LineWidth=1.25;
legend('off')
xticks([0:100:300])
yticks([0:.04:.12])

xticklabels({'0-100','101-200','201-300','>300'})
a=gca;
a.FontSize=12;
xlabel('pairwise distance (um)','fontsize',16)
ylabel('pariwise noise correlation','fontsize',16)
axis('square')
ylim([0 .1])


figure
hold on
scatter(0,nanmean(ppcrn1),100,'d','markeredgecolor',[44 123 182]/255,'linewidth',1.25)
plot([0 0],ppcrn1_ci,'color',[44 123 182]/255,'linewidth',1.25);

scatter(100,nanmean(ppcrn2),100,'d','markeredgecolor',[44 123 182]/255,'linewidth',1.25)
plot([100 100],ppcrn2_ci,'color',[44 123 182]/255,'linewidth',1.25);

scatter(200,nanmean(ppcrn3),100,'d','markeredgecolor',[44 123 182]/255,'linewidth',1.25)
plot([200 200],ppcrn3_ci,'color',[44 123 182]/255,'linewidth',1.25);

scatter(300,nanmean(ppcrn4),100,'d','markeredgecolor',[44 123 182]/255,'linewidth',1.25)
plot([300 300],ppcrn4_ci,'color',[44 123 182]/255,'linewidth',1.25);



ppcrn_f=fit([0:100:300]',[nanmean(ppcrn1) nanmean(ppcrn2) nanmean(ppcrn3) nanmean(ppcrn4)]','exp1')
x=plot(ppcrn_f);
x.Color=[44 123 182]/255;
x.LineWidth=1.25;
legend('off')

scatter(0,nanmean(nanmean(ppcrn1_shuf)),100,'d','markeredgecolor',[.25 .25 .25],'linewidth',1.25)
plot([0 0],[prctile(nanmean(ppcrn1_shuf,2),5) prctile(nanmean(ppcrn1_shuf,2),95)],'color',[.25 .25 .25],'linewidth',1.25);

scatter(100,nanmean(nanmean(ppcrn2_shuf)),100,'d','markeredgecolor',[.25 .25 .25],'linewidth',1.25)
plot([100 100],[prctile(nanmean(ppcrn2_shuf,2),5) prctile(nanmean(ppcrn2_shuf,2),95)],'color',[.25 .25 .25],'linewidth',1.25);

scatter(200,nanmean(nanmean(ppcrn3_shuf)),100,'d','markeredgecolor',[.25 .25 .25],'linewidth',1.25)
plot([200 200],[prctile(nanmean(ppcrn3_shuf,2),5) prctile(nanmean(ppcrn3_shuf,2),95)],'color',[.25 .25 .25],'linewidth',1.25);

scatter(300,nanmean(nanmean(ppcrn4_shuf)),100,'d','markeredgecolor',[.25 .25 .25],'linewidth',1.25)
plot([300 300],[prctile(nanmean(ppcrn4_shuf,2),5) prctile(nanmean(ppcrn4_shuf,2),95)],'color',[.25 .25 .25],'linewidth',1.25);


ppcrn_shuf_f=fit([0:100:300]',[nanmean(nanmean(ppcrn1_shuf)) nanmean(nanmean(ppcrn2_shuf)) nanmean(nanmean(ppcrn3_shuf)) nanmean(nanmean(ppcrn4_shuf)) ]','exp1');
x=plot(ppcrn_shuf_f);
x.Color=[.25 .25 .25];
x.LineWidth=1.25;
legend('off')

scatter(0,nanmean(acrn1),100,'d','markeredgecolor',[215 25 28]/255,'linewidth',1.25)
plot([0 0],acrn1_ci,'color',[215 25 28]/255,'linewidth',1.25);

scatter(100,nanmean(acrn2),100,'d','markeredgecolor',[215 25 28]/255,'linewidth',1.25)
plot([100 100],acrn2_ci,'color',[215 25 28]/255,'linewidth',1.25);

scatter(200,nanmean(acrn3),100,'d','markeredgecolor',[215 25 28]/255,'linewidth',1.25)
plot([200 200],acrn3_ci,'color',[215 25 28]/255,'linewidth',1.25);

scatter(300,nanmean(acrn4),100,'d','markeredgecolor',[215 25 28]/255,'linewidth',1.25)
plot([300 300],acrn4_ci,'color',[215 25 28]/255,'linewidth',1.25);



acrn_f=fit([0:100:300]',[nanmean(acrn1) nanmean(acrn2) nanmean(acrn3) nanmean(acrn4) ]','exp1');
x=plot(acrn_f);
x.Color=[215 25 28]/255;
x.LineWidth=1.25;
legend('off')

scatter(0,nanmean(nanmean(acrn1_shuf)),100,'d','markeredgecolor',[.75 .75 .75],'linewidth',1.25)
plot([0 0],[prctile(nanmean(acrn1_shuf,2),5) prctile(nanmean(acrn1_shuf,2),95)],'color',[.75 .75 .75],'linewidth',1.25);

scatter(100,nanmean(nanmean(acrn2_shuf)),100,'d','markeredgecolor',[.75 .75 .75],'linewidth',1.25)
plot([100 100],[prctile(nanmean(acrn2_shuf,2),5) prctile(nanmean(acrn2_shuf,2),95)],'color',[.75 .75 .75],'linewidth',1.25);

scatter(200,nanmean(nanmean(acrn3_shuf)),100,'d','markeredgecolor',[.75 .75 .75],'linewidth',1.25)
plot([200 200],[prctile(nanmean(acrn3_shuf,2),5) prctile(nanmean(acrn3_shuf,2),95)],'color',[.75 .75 .75],'linewidth',1.25);

scatter(300,nanmean(nanmean(acrn4_shuf)),100,'d','markeredgecolor',[.75 .75 .75],'linewidth',1.25)
plot([300 300],[prctile(nanmean(acrn4_shuf,2),5) prctile(nanmean(acrn4_shuf,2),95)],'color',[.75 .75 .75],'linewidth',1.25);

acrn_shuf_f=fit([0:100:300]',[nanmean(nanmean(acrn1_shuf)) nanmean(nanmean(acrn2_shuf)) nanmean(nanmean(acrn3_shuf)) nanmean(nanmean(acrn4_shuf)) ]','exp1');
x=plot(acrn_shuf_f);
x.Color=[.75 .75 .75];
x.LineWidth=1.25;
legend('off')
xticks([0:100:300])
yticks([0:.04:.12])

xticklabels({'0-100','101-200','201-300','>300'})
a=gca;
a.FontSize=12;
xlabel('pairwise distance (um)','fontsize',16)
ylabel('pariwise noise correlation','fontsize',16)
axis('square')
ylim([0 .1])

figure
hold on
scatter(0,nanmean(ppcrr1),100,'*','markeredgecolor',[44 123 182]/255,'linewidth',1.25)
plot([0 0],ppcrr1_ci,'color',[44 123 182]/255,'linewidth',1.25);

scatter(100,nanmean(ppcrr2),100,'*','markeredgecolor',[44 123 182]/255,'linewidth',1.25)
plot([100 100],ppcrr2_ci,'color',[44 123 182]/255,'linewidth',1.25);

scatter(200,nanmean(ppcrr3),100,'*','markeredgecolor',[44 123 182]/255,'linewidth',1.25)
plot([200 200],ppcrr3_ci,'color',[44 123 182]/255,'linewidth',1.25);

scatter(300,nanmean(ppcrr4),100,'*','markeredgecolor',[44 123 182]/255,'linewidth',1.25)
plot([300 300],ppcrr4_ci,'color',[44 123 182]/255,'linewidth',1.25);

ppcrr_f=fit([0:100:300]',[nanmean(ppcrr1) nanmean(ppcrr2) nanmean(ppcrr3) nanmean(ppcrr4)]','exp1');
x=plot(ppcrr_f);
x.Color=[44 123 182]/255;
x.LineWidth=1.25;
legend('off')

scatter(0,nanmean(nanmean(ppcrr1_shuf)),100,'*','markeredgecolor',[.25 .25 .25],'linewidth',1.25)
plot([0 0],[prctile(nanmean(ppcrr1_shuf,2),5) prctile(nanmean(ppcrr1_shuf,2),95)],'color',[.25 .25 .25],'linewidth',1.25);

scatter(100,nanmean(nanmean(ppcrr2_shuf)),100,'*','markeredgecolor',[.25 .25 .25],'linewidth',1.25)
plot([100 100],[prctile(nanmean(ppcrr2_shuf,2),5) prctile(nanmean(ppcrr2_shuf,2),95)],'color',[.25 .25 .25],'linewidth',1.25);

scatter(200,nanmean(nanmean(ppcrr3_shuf)),100,'*','markeredgecolor',[.25 .25 .25],'linewidth',1.25)
plot([200 200],[prctile(nanmean(ppcrr3_shuf,2),5) prctile(nanmean(ppcrr3_shuf,2),95)],'color',[.25 .25 .25],'linewidth',1.25);

scatter(300,nanmean(nanmean(ppcrr4_shuf)),100,'*','markeredgecolor',[.25 .25 .25],'linewidth',1.25)
plot([300 300],[prctile(nanmean(ppcrr4_shuf,2),5) prctile(nanmean(ppcrr4_shuf,2),95)],'color',[.25 .25 .25],'linewidth',1.25);


ppcrr_shuf_f=fit([0:100:300]',[nanmean(nanmean(ppcrr1_shuf)) nanmean(nanmean(ppcrr2_shuf)) nanmean(nanmean(ppcrr3_shuf)) nanmean(nanmean(ppcrr4_shuf)) ]','exp1');
x=plot(ppcrr_shuf_f);
x.Color=[.25 .25 .25];
x.LineWidth=1.25;
legend('off')

scatter(0,nanmean(acrr1),100,'*','markeredgecolor',[215 25 28]/255,'linewidth',1.25)
plot([0 0],acrr1_ci,'color',[215 25 28]/255,'linewidth',1.25);

scatter(100,nanmean(acrr2),100,'*','markeredgecolor',[215 25 28]/255,'linewidth',1.25)
plot([100 100],acrr2_ci,'color',[215 25 28]/255,'linewidth',1.25);

scatter(200,nanmean(acrr3),100,'*','markeredgecolor',[215 25 28]/255,'linewidth',1.25)
plot([200 200],acrr3_ci,'color',[215 25 28]/255,'linewidth',1.25);

scatter(300,nanmean(acrr4),100,'*','markeredgecolor',[215 25 28]/255,'linewidth',1.25)
plot([300 300],acrr4_ci,'color',[215 25 28]/255,'linewidth',1.25);

acrr_f=fit([0:100:300]',[nanmean(acrr1) nanmean(acrr2) nanmean(acrr3) nanmean(acrr4)]','exp1');
x=plot(acrr_f);
x.Color=[215 25 28]/255;
x.LineWidth=1.25;
legend('off')

scatter(0,nanmean(nanmean(acrr1_shuf)),100,'*','markeredgecolor',[.75 .75 .75],'linewidth',1.25)
plot([0 0],[prctile(nanmean(acrr1_shuf,2),5) prctile(nanmean(acrr1_shuf,2),95)],'color',[.75 .75 .75],'linewidth',1.25);

scatter(100,nanmean(nanmean(acrr2_shuf)),100,'*','markeredgecolor',[.75 .75 .75],'linewidth',1.25)
plot([100 100],[prctile(nanmean(acrr2_shuf,2),5) prctile(nanmean(acrr2_shuf,2),95)],'color',[.75 .75 .75],'linewidth',1.25);

scatter(200,nanmean(nanmean(acrr3_shuf)),100,'*','markeredgecolor',[.75 .75 .75],'linewidth',1.25)
plot([200 200],[prctile(nanmean(acrr3_shuf,2),5) prctile(nanmean(acrr3_shuf,2),95)],'color',[.75 .75 .75],'linewidth',1.25);

scatter(300,nanmean(nanmean(acrr4_shuf)),100,'*','markeredgecolor',[.75 .75 .75],'linewidth',1.25)
plot([300 300],[prctile(nanmean(acrr4_shuf,2),5) prctile(nanmean(acrr4_shuf,2),95)],'color',[.75 .75 .75],'linewidth',1.25);
acrr_shuf_f=fit([0:100:300]',[nanmean(nanmean(acrr1_shuf)) nanmean(nanmean(acrr2_shuf)) nanmean(nanmean(acrr3_shuf)) nanmean(nanmean(acrr4_shuf))]','exp1');
x=plot(acrr_shuf_f);
x.Color=[.75 .75 .75];
x.LineWidth=1.25;
legend('off')
xticks([0:100:300])
yticks([0:.04:.12])
ylim([0 .1])

xticklabels({'0-100','101-200','201-300','>300'})
a=gca;
a.FontSize=12;
xlabel('pairwise distance (um)','fontsize',16)
ylabel('pariwise noise correlation','fontsize',16)
axis('square')