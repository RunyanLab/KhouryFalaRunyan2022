clear all
load name
load ac
load ppc
base=cd;
ppcnn_bin10fr_sess=[];
ppcrn_bin10fr_sess=[];
ppcrr_bin10fr_sess=[];

ppcn1_bin10fr_sess=[];
ppcn2_bin10fr_sess=[];
ppcn3_bin10fr_sess=[];
ppcn4_bin10fr_sess=[];

ppcrn1_bin10fr_sess=[];
ppcrn2_bin10fr_sess=[];
ppcrn3_bin10fr_sess=[];
ppcrn4_bin10fr_sess=[];

ppcrr1_bin10fr_sess=[];
ppcrr2_bin10fr_sess=[];
ppcrr3_bin10fr_sess=[];
ppcrr4_bin10fr_sess=[];

for i=1:size(ppc,2)
    for n=1:size(ppc{i},2)
            load([base '\noise_correlations\' name{i} ' ' ppc{i}{n}.date ' ppc.mat'])
            ppcnn_bin10fr_sess=cat(2,ppcnn_bin10fr_sess,nanmean(nn_bin10fr));
            ppcrn_bin10fr_sess=cat(2,ppcrn_bin10fr_sess,nanmean(rn_bin10fr));
            ppcrr_bin10fr_sess=cat(2,ppcrr_bin10fr_sess,nanmean(rr_bin10fr));
            if length(n1)>=10
                ppcn1_bin10fr_sess=cat(2,ppcn1_bin10fr_sess,nanmean(nn_bin10fr(n1)));
            else
             
                ppcn1_bin10fr_sess=cat(2,ppcn1_bin10fr_sess,nan);
            end
            
            if length(n2)>=10
                ppcn2_bin10fr_sess=cat(2,ppcn2_bin10fr_sess,nanmean(nn_bin10fr(n2)));
            else
                ppcn2_bin10fr_sess=cat(2,ppcn2_bin10fr_sess,nan);
            end
            if length(n3)>=10
                ppcn3_bin10fr_sess=cat(2,ppcn3_bin10fr_sess,nanmean(nn_bin10fr(n3)));
            else
                 ppcn3_bin10fr_sess=cat(2,ppcn3_bin10fr_sess,nan);
            end
            
            if length(n4)>=10
                ppcn4_bin10fr_sess=cat(2,ppcn4_bin10fr_sess,nanmean(nn_bin10fr(n4)));
            else
                ppcn4_bin10fr_sess=cat(2,ppcn4_bin10fr_sess,nan);
            end
            
          
            if length(rn1)>=10
                ppcrn1_bin10fr_sess=cat(2,ppcrn1_bin10fr_sess,nanmean(rn_bin10fr(rn1)));
            else
                ppcrn1_bin10fr_sess=cat(2,ppcrn1_bin10fr_sess,nan);
            end
            
            if length(rn2)>=10
                ppcrn2_bin10fr_sess=cat(2,ppcrn2_bin10fr_sess,nanmean(rn_bin10fr(rn2)));
            else
                ppcrn2_bin10fr_sess=cat(2,ppcrn2_bin10fr_sess,nan);
            end
            if length(rn3)>=10
                ppcrn3_bin10fr_sess=cat(2,ppcrn3_bin10fr_sess,nanmean(rn_bin10fr(rn3)));
            else
                ppcrn3_bin10fr_sess=cat(2,ppcrn3_bin10fr_sess,nan);
            end
            
            if length(rn4)>=10
                ppcrn4_bin10fr_sess=cat(2,ppcrn4_bin10fr_sess,nanmean(rn_bin10fr(rn4) ));
            else
                ppcrn4_bin10fr_sess=cat(2,ppcrn4_bin10fr_sess,nan);
            end
            
            
            if length(rr1)>=10
                ppcrr1_bin10fr_sess=cat(2,ppcrr1_bin10fr_sess,nanmean(rr_bin10fr(rr1)));
            else
                ppcrr1_bin10fr_sess=cat(2,ppcrr1_bin10fr_sess,nan);
            end
            
            if length(rr2)>=10
                ppcrr2_bin10fr_sess=cat(2,ppcrr2_bin10fr_sess,nanmean(rr_bin10fr(rr2)));
            else
                ppcrr2_bin10fr_sess=cat(2,ppcrr2_bin10fr_sess,nan);
            end
            if length(rr3)>=10
                ppcrr3_bin10fr_sess=cat(2,ppcrr3_bin10fr_sess,nanmean(rr_bin10fr(rr3)));
            else
                ppcrr3_bin10fr_sess=cat(2,ppcrr3_bin10fr_sess,nan);
            end
            
            if length(rr4)>=10
                ppcrr4_bin10fr_sess=cat(2,ppcrr4_bin10fr_sess,nanmean(rr_bin10fr(rr4)));
            else
                ppcrr4_bin10fr_sess=cat(2,ppcrr4_bin10fr_sess,nan);
            end
    end
end

acnn_bin10fr_sess=[];
acrn_bin10fr_sess=[];
acrr_bin10fr_sess=[];

acn1_bin10fr_sess=[];
acn2_bin10fr_sess=[];
acn3_bin10fr_sess=[];
acn4_bin10fr_sess=[];

acrn1_bin10fr_sess=[];
acrn2_bin10fr_sess=[];
acrn3_bin10fr_sess=[];
acrn4_bin10fr_sess=[];

acrr1_bin10fr_sess=[];
acrr2_bin10fr_sess=[];
acrr3_bin10fr_sess=[];
acrr4_bin10fr_sess=[];

for i=1:size(ac,2)
    for n=1:size(ac{i},2)
            load([base '\noise_correlations\' name{i} ' ' ac{i}{n}.date ' ac.mat'])
            acnn_bin10fr_sess=cat(2,acnn_bin10fr_sess,nanmean(nn_bin10fr));
            acrn_bin10fr_sess=cat(2,acrn_bin10fr_sess,nanmean(rn_bin10fr));
            acrr_bin10fr_sess=cat(2,acrr_bin10fr_sess,nanmean(rr_bin10fr));
            if length(n1)>=10
                acn1_bin10fr_sess=cat(2,acn1_bin10fr_sess,nanmean(nn_bin10fr(n1)));
            else
             
                acn1_bin10fr_sess=cat(2,acn1_bin10fr_sess,nan);
            end
            
            if length(n2)>=10
                acn2_bin10fr_sess=cat(2,acn2_bin10fr_sess,nanmean(nn_bin10fr(n2)));
            else
                acn2_bin10fr_sess=cat(2,acn2_bin10fr_sess,nan);
            end
            if length(n3)>=10
                acn3_bin10fr_sess=cat(2,acn3_bin10fr_sess,nanmean(nn_bin10fr(n3)));
            else
                 acn3_bin10fr_sess=cat(2,acn3_bin10fr_sess,nan);
            end
            
            if length(n4)>=10
                acn4_bin10fr_sess=cat(2,acn4_bin10fr_sess,nanmean(nn_bin10fr(n4)));
            else
                acn4_bin10fr_sess=cat(2,acn4_bin10fr_sess,nan);
            end
            
          
            if length(rn1)>=10
                acrn1_bin10fr_sess=cat(2,acrn1_bin10fr_sess,nanmean(rn_bin10fr(rn1)));
            else
                acrn1_bin10fr_sess=cat(2,acrn1_bin10fr_sess,nan);
            end
            
            if length(rn2)>=10
                acrn2_bin10fr_sess=cat(2,acrn2_bin10fr_sess,nanmean(rn_bin10fr(rn2)));
            else
                acrn2_bin10fr_sess=cat(2,acrn2_bin10fr_sess,nan);
            end
            if length(rn3)>=10
                acrn3_bin10fr_sess=cat(2,acrn3_bin10fr_sess,nanmean(rn_bin10fr(rn3)));
            else
                acrn3_bin10fr_sess=cat(2,acrn3_bin10fr_sess,nan);
            end
            
            if length(rn4)>=10
                acrn4_bin10fr_sess=cat(2,acrn4_bin10fr_sess,nanmean(rn_bin10fr(rn4)));
            else
                acrn4_bin10fr_sess=cat(2,acrn4_bin10fr_sess,nan);
            end
            
            
            if length(rr1)>=10
                acrr1_bin10fr_sess=cat(2,acrr1_bin10fr_sess,nanmean(rr_bin10fr(rr1)));
            else
                acrr1_bin10fr_sess=cat(2,acrr1_bin10fr_sess,nan);
            end
            
            if length(rr2)>=10
                acrr2_bin10fr_sess=cat(2,acrr2_bin10fr_sess,nanmean(rr_bin10fr(rr2)));
            else
                acrr2_bin10fr_sess=cat(2,acrr2_bin10fr_sess,nan);
            end
            if length(rr3)>=10
                acrr3_bin10fr_sess=cat(2,acrr3_bin10fr_sess,nanmean(rr_bin10fr(rr3)));
            else
                acrr3_bin10fr_sess=cat(2,acrr3_bin10fr_sess,nan);
            end
            
            if length(rr4 )>=10
                acrr4_bin10fr_sess=cat(2,acrr4_bin10fr_sess,nanmean(rr_bin10fr(rr4) ));
            else
                acrr4_bin10fr_sess=cat(2,acrr4_bin10fr_sess,nan);
            end
    end
end



acnn_bin10fr_lam=[];
acrn_bin10fr_lam=[];
acrr_bin10fr_lam=[];


dist_bins=[0 100 200 300];
for i=1:length(acn1_bin10fr_sess)

    try
        lastwarn('','');
        x=[acn1_bin10fr_sess(i) acn2_bin10fr_sess(i) acn3_bin10fr_sess(i) acn4_bin10fr_sess(i) ];
        acnn_bin10fr_f{i}=fit(dist_bins(find(~isnan(x')))',x(find(~isnan(x)))','exp1');
        [warnMsg,warnID]=lastwarn();
        if isempty(warnID)
            
            acnn_bin10fr_lam=cat(2,acnn_bin10fr_lam,acnn_bin10fr_f{i}.b*-1);
        else
            acnn_bin10fr_f{i}=nan;
            acnn_bin10fr_lam=cat(2,acnn_bin10fr_lam,nan);
        end
    catch
        acnn_bin10fr_lam=cat(2,acnn_bin10fr_lam,nan);
        acnn_bin10fr_f{i}=nan;
    end
    
    
    try
        lastwarn('','');
        x=[acrn1_bin10fr_sess(i) acrn2_bin10fr_sess(i) acrn3_bin10fr_sess(i) acrn4_bin10fr_sess(i)];
        acrn_bin10fr_f{i}=fit(dist_bins(find(~isnan(x')))',x(find(~isnan(x)))','exp1');
        [warnMsg,warnID]=lastwarn();
        if isempty(warnID)
            
            acrn_bin10fr_lam=cat(2,acrn_bin10fr_lam,acrn_bin10fr_f{i}.b*-1);
        else
            acrn_bin10fr_f{i}=nan;
            acrn_bin10fr_lam=cat(2,acrn_bin10fr_lam,nan);
        end
    catch
        acrn_bin10fr_lam=cat(2,acrn_bin10fr_lam,nan);
        acrn_bin10fr_f{i}=nan;
    end
    
    try
        lastwarn('','');
        x=[acrr1_bin10fr_sess(i) acrr2_bin10fr_sess(i) acrr3_bin10fr_sess(i) acrr4_bin10fr_sess(i) ];
        acrr_bin10fr_f{i}=fit(dist_bins(find(~isnan(x')))',x(find(~isnan(x)))','exp1');
        [warnMsg,warnID]=lastwarn();
        if isempty(warnID)
            
            acrr_bin10fr_lam=cat(2,acrr_bin10fr_lam,acrr_bin10fr_f{i}.b*-1);
        else
            acrr_bin10fr_f{i}=nan;
            acrr_bin10fr_lam=cat(2,acrr_bin10fr_lam,nan);
        end    
    catch
        acrr_bin10fr_lam=cat(2,acrr_bin10fr_lam,nan);
        acrr_bin10fr_f{i}=nan;
    end

    

    

    
       
end



ppcnn_bin10fr_lam=[];
ppcrn_bin10fr_lam=[];
ppcrr_bin10fr_lam=[];


dist_bins=[0 100 200 300];
for i=1:length(ppcn1_bin10fr_sess)

    try
        lastwarn('','');
        x=[ppcn1_bin10fr_sess(i) ppcn2_bin10fr_sess(i) ppcn3_bin10fr_sess(i) ppcn4_bin10fr_sess(i) ];
        ppcnn_bin10fr_f{i}=fit(dist_bins(find(~isnan(x')))',x(find(~isnan(x)))','exp1');
        [warnMsg,warnID]=lastwarn();
        if isempty(warnID)
            
            ppcnn_bin10fr_lam=cat(2,ppcnn_bin10fr_lam,ppcnn_bin10fr_f{i}.b*-1);
        else
            ppcnn_bin10fr_f{i}=nan;
            ppcnn_bin10fr_lam=cat(2,ppcnn_bin10fr_lam,nan);
        end
    catch
        ppcnn_bin10fr_lam=cat(2,ppcnn_bin10fr_lam,nan);
        ppcnn_bin10fr_f{i}=nan;
    end
    
    
    try
        lastwarn('','');
        x=[ppcrn1_bin10fr_sess(i) ppcrn2_bin10fr_sess(i) ppcrn3_bin10fr_sess(i) ppcrn4_bin10fr_sess(i)];
        ppcrn_bin10fr_f{i}=fit(dist_bins(find(~isnan(x')))',x(find(~isnan(x)))','exp1');
        [warnMsg,warnID]=lastwarn();
        if isempty(warnID)
            
            ppcrn_bin10fr_lam=cat(2,ppcrn_bin10fr_lam,ppcrn_bin10fr_f{i}.b*-1);
        else
            ppcrn_bin10fr_f{i}=nan;
            ppcrn_bin10fr_lam=cat(2,ppcrn_bin10fr_lam,nan);
        end
    catch
        ppcrn_bin10fr_lam=cat(2,ppcrn_bin10fr_lam,nan);
        ppcrn_bin10fr_f{i}=nan;
    end
    
    try
        lastwarn('','');
        x=[ppcrr1_bin10fr_sess(i) ppcrr2_bin10fr_sess(i) ppcrr3_bin10fr_sess(i) ppcrr4_bin10fr_sess(i) ];
        ppcrr_bin10fr_f{i}=fit(dist_bins(find(~isnan(x')))',x(find(~isnan(x)))','exp1');
        [warnMsg,warnID]=lastwarn();
        if isempty(warnID)
            
            ppcrr_bin10fr_lam=cat(2,ppcrr_bin10fr_lam,ppcrr_bin10fr_f{i}.b*-1);
        else
            ppcrr_bin10fr_f{i}=nan;
            ppcrr_bin10fr_lam=cat(2,ppcrr_bin10fr_lam,nan);
        end    
    catch
        ppcrr_bin10fr_lam=cat(2,ppcrr_bin10fr_lam,nan);
        ppcrr_bin10fr_f{i}=nan;
    end

end
acnn_ci=bootci(1000,@mean,acnn_bin10fr_lam(find(~isnan(acnn_bin10fr_lam))));
acrn_ci=bootci(1000,@mean,acrn_bin10fr_lam(find(~isnan(acrn_bin10fr_lam))));
acrr_ci=bootci(1000,@mean,acrr_bin10fr_lam(find(~isnan(acrr_bin10fr_lam))));


ppcnn_ci=bootci(1000,@mean,ppcnn_bin10fr_lam(find(~isnan(ppcnn_bin10fr_lam))));
ppcrn_ci=bootci(1000,@mean,ppcrn_bin10fr_lam(find(~isnan(ppcrn_bin10fr_lam))));
ppcrr_ci=bootci(1000,@mean,ppcrr_bin10fr_lam(find(~isnan(ppcrr_bin10fr_lam))));

figure
hold on
scatter(ones(size(acnn_bin10fr_lam))*1.2,acnn_bin10fr_lam,'o','markeredgecolor',[215 25 28]/255)
plot([1 1],acnn_ci,'color','k','linewidth',1.25)

scatter(ones(size(acrn_bin10fr_lam))*2.2,acrn_bin10fr_lam,'d','markeredgecolor',[215 25 28]/255)
plot([2 2],acrn_ci,'color','k','linewidth',1.25)

scatter(ones(size(acrr_bin10fr_lam))*3.2,acrr_bin10fr_lam,'*','markeredgecolor',[215 25 28]/255)
plot([3 3],acrr_ci,'color','k','linewidth',1.25)

scatter(ones(size(ppcnn_bin10fr_lam))*4.2,ppcnn_bin10fr_lam,'o','markeredgecolor',[44 123 182]/255)
plot([4 4],ppcnn_ci,'color','k','linewidth',1.25)

scatter(ones(size(ppcrn_bin10fr_lam))*5.2,ppcrn_bin10fr_lam,'d','markeredgecolor',[44 123 182]/255)
plot([5 5],ppcrn_ci,'color','k','linewidth',1.25)

scatter(ones(size(ppcrr_bin10fr_lam))*6.2,ppcrr_bin10fr_lam,'*','markeredgecolor',[44 123 182]/255)
plot([6 6],ppcrr_ci,'color','k','linewidth',1.25)

xticks([1:6])
xticklabels({'AC Non/Non','AC Non/SOM','AC SOM/SOM', 'PPC Non/Non','PPC Non/SOM','PPC SOM/SOM'})
xtickangle(60)
a=gca;
a.FontSize=16;
xlim([.5 6.5])
ylabel('fitted lambda')
b=ylim;
b=b*.9;
ylim(b)
axis('square')

