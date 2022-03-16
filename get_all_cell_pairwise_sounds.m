clear all
load ac
load ppc
load name
base=cd;
acnn1=[];
acnn2=[];
acnn3=[];
acnn4=[];

acrn1=[];
acrn2=[];
acrn3=[];
acrn4=[];

acrr1=[];
acrr2=[];
acrr3=[];
acrr4=[];


for i=1:size(ac,2)
    for n=1:size(ac{i},2)
           load([base '\noise_correlations\' name{i} ' ' ac{i}{n}.date ' ac.mat'])
            acnn1=cat(2,acnn1,nn_bin10fr(n1));
            acnn2=cat(2,acnn2,nn_bin10fr(n2));            
            acnn3=cat(2,acnn3,nn_bin10fr(n3));            
            acnn4=cat(2,acnn4,[nn_bin10fr(n4)]);            
            
            
            acrn1=cat(2,acrn1,rn_bin10fr(rn1));
            acrn2=cat(2,acrn2,rn_bin10fr(rn2));            
            acrn3=cat(2,acrn3,rn_bin10fr(rn3));            
            acrn4=cat(2,acrn4,[rn_bin10fr(rn4) ]);            
                        
            acrr1=cat(2,acrr1,rr_bin10fr(rr1));
            acrr2=cat(2,acrr2,rr_bin10fr(rr2));            
            acrr3=cat(2,acrr3,rr_bin10fr(rr3));            
            acrr4=cat(2,acrr4,[rr_bin10fr(rr4)]);            
          
    end
end

ppcnn1=[];
ppcnn2=[];
ppcnn3=[];
ppcnn4=[];

ppcrn1=[];
ppcrn2=[];
ppcrn3=[];
ppcrn4=[];

ppcrr1=[];
ppcrr2=[];
ppcrr3=[];
ppcrr4=[];


for i=1:size(ppc,2)
    for n=1:size(ppc{i},2)
            load([base '\noise_correlations\' name{i} ' ' ppc{i}{n}.date ' ppc.mat'])
            
            ppcnn1=cat(2,ppcnn1,nn_bin10fr(n1));
            ppcnn2=cat(2,ppcnn2,nn_bin10fr(n2));            
            ppcnn3=cat(2,ppcnn3,nn_bin10fr(n3));            
            ppcnn4=cat(2,ppcnn4,[nn_bin10fr(n4)]);            
            
            
            ppcrn1=cat(2,ppcrn1,rn_bin10fr(rn1));
            ppcrn2=cat(2,ppcrn2,rn_bin10fr(rn2));            
            ppcrn3=cat(2,ppcrn3,rn_bin10fr(rn3));            
            ppcrn4=cat(2,ppcrn4,[rn_bin10fr(rn4)]);            
                        
            ppcrr1=cat(2,ppcrr1,rr_bin10fr(rr1));
            ppcrr2=cat(2,ppcrr2,rr_bin10fr(rr2));            
            ppcrr3=cat(2,ppcrr3,rr_bin10fr(rr3));            
            ppcrr4=cat(2,ppcrr4,[rr_bin10fr(rr4)]);            
          
    end
end

ppcnn1_ci=bootci(1000,@mean,ppcnn1);
ppcnn2_ci=bootci(1000,@mean,ppcnn2);
ppcnn3_ci=bootci(1000,@mean,ppcnn3);
ppcnn4_ci=bootci(1000,@mean,ppcnn4);

ppcrn1_ci=bootci(1000,@mean,ppcrn1);
ppcrn2_ci=bootci(1000,@mean,ppcrn2);
ppcrn3_ci=bootci(1000,@mean,ppcrn3);
ppcrn4_ci=bootci(1000,@mean,ppcrn4);

ppcrr1_ci=bootci(1000,@mean,ppcrr1);
ppcrr2_ci=bootci(1000,@mean,ppcrr2);
ppcrr3_ci=bootci(1000,@mean,ppcrr3);
ppcrr4_ci=bootci(1000,@mean,ppcrr4);

acnn1_ci=bootci(1000,@mean,acnn1);
acnn2_ci=bootci(1000,@mean,acnn2);
acnn3_ci=bootci(1000,@mean,acnn3);
acnn4_ci=bootci(1000,@mean,acnn4);

acrn1_ci=bootci(1000,@mean,acrn1);
acrn2_ci=bootci(1000,@mean,acrn2);
acrn3_ci=bootci(1000,@mean,acrn3);
acrn4_ci=bootci(1000,@mean,acrn4);

acrr1_ci=bootci(1000,@mean,acrr1);
acrr2_ci=bootci(1000,@mean,acrr2);
acrr3_ci=bootci(1000,@mean,acrr3);
acrr4_ci=bootci(1000,@mean,acrr4);

clear ac
clear ppc
clear i
clear n
clear name

save all_cell_pairwise_sounds
