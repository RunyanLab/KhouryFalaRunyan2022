clear all
load ac
load ppc
load name
base=cd;

acnn1_shuf=[];
acnn2_shuf=[];
acnn3_shuf=[];
acnn4_shuf=[];

acrn1_shuf=[];
acrn2_shuf=[];
acrn3_shuf=[];
acrn4_shuf=[];

acrr1_shuf=[];
acrr2_shuf=[];
acrr3_shuf=[];
acrr4_shuf=[];

% 
for i=1:size(ac,2)
    for n=1:size(ac{i},2)
            load([base '\noise_correlations\' name{i} ' ' ac{i}{n}.date ' ac.mat'],'n1','n2','n3','n4','rn1','rn2','rn3','rn4','rr1','rr2','rr3','rr4')
            load([base '\noise_correlations_shuffle\' name{i} ' ' ac{i}{n}.date ' ac.mat'])

           
            acnn1_shuf=cat(2,acnn1_shuf,nn_bin10fr_shuf(:,n1));
            acnn2_shuf=cat(2,acnn2_shuf,nn_bin10fr_shuf(:,n2));            
            acnn3_shuf=cat(2,acnn3_shuf,nn_bin10fr_shuf(:,n3));            
            acnn4_shuf=cat(2,acnn4_shuf,[nn_bin10fr_shuf(:,n4)]);            
            
            
            acrn1_shuf=cat(2,acrn1_shuf,rn_bin10fr_shuf(:,rn1));
            acrn2_shuf=cat(2,acrn2_shuf,rn_bin10fr_shuf(:,rn2));            
            acrn3_shuf=cat(2,acrn3_shuf,rn_bin10fr_shuf(:,rn3));            
            acrn4_shuf=cat(2,acrn4_shuf,[rn_bin10fr_shuf(:,rn4) ]);            
            
         
            acrr1_shuf=cat(2,acrr1_shuf,rr_bin10fr_shuf(:,rr1));
            acrr2_shuf=cat(2,acrr2_shuf,rr_bin10fr_shuf(:,rr2));            
            acrr3_shuf=cat(2,acrr3_shuf,rr_bin10fr_shuf(:,rr3));            
            acrr4_shuf=cat(2,acrr4_shuf,[rr_bin10fr_shuf(:,rr4)]);           

    end
end
ppcnn1_shuf=[];
ppcnn2_shuf=[];
ppcnn3_shuf=[];
ppcnn4_shuf=[];

ppcrn1_shuf=[];
ppcrn2_shuf=[];
ppcrn3_shuf=[];
ppcrn4_shuf=[];

ppcrr1_shuf=[];
ppcrr2_shuf=[];
ppcrr3_shuf=[];
ppcrr4_shuf=[];

% 
for i=1:size(ppc,2)
    for n=1:size(ppc{i},2)
            load([base '\noise_correlations\' name{i} ' ' ppc{i}{n}.date ' ppc.mat'],'n1','n2','n3','n4','rn1','rn2','rn3','rn4','rr1','rr2','rr3','rr4')
            load([base '\noise_correlations_shuffle\' name{i} ' ' ppc{i}{n}.date ' ppc.mat'])
            
            
            ppcnn1_shuf=cat(2,ppcnn1_shuf,nn_bin10fr_shuf(:,n1));
            ppcnn2_shuf=cat(2,ppcnn2_shuf,nn_bin10fr_shuf(:,n2));            
            ppcnn3_shuf=cat(2,ppcnn3_shuf,nn_bin10fr_shuf(:,n3));            
            ppcnn4_shuf=cat(2,ppcnn4_shuf,[nn_bin10fr_shuf(:,n4)]);            
            
         
            
            ppcrn1_shuf=cat(2,ppcrn1_shuf,rn_bin10fr_shuf(:,rn1));
            ppcrn2_shuf=cat(2,ppcrn2_shuf,rn_bin10fr_shuf(:,rn2));            
            ppcrn3_shuf=cat(2,ppcrn3_shuf,rn_bin10fr_shuf(:,rn3));            
            ppcrn4_shuf=cat(2,ppcrn4_shuf,[rn_bin10fr_shuf(:,rn4) ]);            
            
         
            
            ppcrr1_shuf=cat(2,ppcrr1_shuf,rr_bin10fr_shuf(:,rr1));
            ppcrr2_shuf=cat(2,ppcrr2_shuf,rr_bin10fr_shuf(:,rr2));            
            ppcrr3_shuf=cat(2,ppcrr3_shuf,rr_bin10fr_shuf(:,rr3));            
            ppcrr4_shuf=cat(2,ppcrr4_shuf,[rr_bin10fr_shuf(:,rr4) ]);           

    end
end


save all_cell_pairwise_sounds_shuf


