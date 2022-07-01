function noise_correlations_first_rep_shuffle(mouse,date,area,base)
load([base '\' mouse ' ' date ' ' area '.mat'])


soundOn=[];
soundOff=[];

soundOn=[];
soundOff=[];
for i=2:length(soundLocs)-59
    if soundLocs(i)>0 && soundLocs(i-1)==0
        soundOn=cat(2,soundOn,i);
    elseif soundLocs(i)>0 && soundLocs(i+1)==0
        soundOff=cat(2,soundOff,i);
    end
end

if length(soundOff)>length(soundOn)
    soundOff(1)=[];
end

for i=1:length(soundOff)

    dur(i)=soundOff(i)-soundOn(i);
    rep(i)=soundReps(soundOn(i));
    loc(i)=soundLocs(soundOn(i));
end

bad_sound=[];
for i=1:length(dur)
    if ~ismember(dur(i),[29 30 59 60])
        bad_sound=cat(2,bad_sound,i);
    end
end

soundOn(bad_sound)=[];
soundOff(bad_sound)=[];
dur(bad_sound)=[];
rep(bad_sound)=[];
loc(bad_sound)=[];

for i=1:8
    trial{i}{1}=[];
    trial{i}{2}=[];
end

for i=1:length(soundOff)-2
    if rep(i)==1 
        if dur(i)>50
            trial{loc(i)}{2}=cat(1,trial{loc(i)}{2}, soundOn(i)-5:soundOn(i)+64);
        else
            trial{loc(i)}{1}=cat(1,trial{loc(i)}{1}, soundOn(i)-5:soundOn(i)+34);
        end
    end
end

for i=1:size(deconvnonpass,1)
    for d=1:2
        for l=1:8
            deconvnon_trial{l}{d}{i}=[];
            for n=1:size(trial{l}{d},1)
                deconvnon_trial{l}{d}{i}=cat(1,deconvnon_trial{l}{d}{i},deconvnonpass(i,trial{l}{d}(n,:)));
            end
        end
    end
end

for i=1:size(deconvredpass,1)
    for d=1:2
        for l=1:8
            deconvred_trial{l}{d}{i}=[];
            for n=1:size(trial{l}{d},1)
                deconvred_trial{l}{d}{i}=cat(1,deconvred_trial{l}{d}{i},deconvredpass(i,trial{l}{d}(n,:)));
            end
        end
    end
end




for i=1:size(deconvredpass,1)
    for d=1
        for l=1:8
            edges=(1:10:31);
            for n=1:length(edges)
                deconvred_trial_bin10fr{l}{d}{i}(:,n)=sum(deconvred_trial{l}{d}{i}(:,edges(n):edges(n)+9),2);
            end
        end
    end
    for d=2
        for l=1:8
            edges=(1:10:61);
            for n=1:length(edges)
                 deconvred_trial_bin10fr{l}{d}{i}(:,n)=sum(deconvred_trial{l}{d}{i}(:,edges(n):edges(n)+9),2);
            end
        end
    end           
end
for i=1:size(deconvnonpass,1)
    for d=1
        for l=1:8
            edges=(1:10:31);
            for n=1:length(edges)
                deconvnon_trial_bin10fr{l}{d}{i}(:,n)=sum(deconvnon_trial{l}{d}{i}(:,edges(n):edges(n)+9),2);
            end
        end
    end
    for d=2
        for l=1:8
            edges=(1:10:61);
            for n=1:length(edges)
                 deconvnon_trial_bin10fr{l}{d}{i}(:,n)=sum(deconvnon_trial{l}{d}{i}(:,edges(n):edges(n)+9),2);
            end
        end
    end           
end

for i=1:size(deconvredpass,1)
    for d=1:2
        for l=1:8
            deconvred_mean_bin10fr{l}{d}{i}=nanmean(deconvred_trial_bin10fr{1}{d}{i});
            for n=1:size(deconvred_trial{l}{d}{i},1)
                deconvred_trial_bin10fr_ms{l}{d}{i}(n,:)=deconvred_trial_bin10fr{l}{d}{i}(n,:)-deconvred_mean_bin10fr{l}{d}{i};
            end
        end
    end
end

for i=1:size(deconvnonpass,1)
    for d=1:2
        for l=1:8
            deconvnon_mean_bin10fr{l}{d}{i}=nanmean(deconvnon_trial_bin10fr{1}{d}{i});
            
            for n=1:size(deconvnon_trial{l}{d}{i},1)
                deconvnon_trial_bin10fr_ms{l}{d}{i}(n,:)=deconvnon_trial_bin10fr{l}{d}{i}(n,:)-deconvnon_mean_bin10fr{l}{d}{i};            
            end
        end
    end
end

rr_bin10fr_shuf=[];
rn_bin10fr_shuf=[];
nn_bin10fr_shuf=[];

for iter=1:1000
    dnc_ms_bin10fr=[];
    
    for i=1:size(deconvnonpass,1)
        dnc_ms_bin10fr_tmp=[];
        for d=1:2
            for l=1:8
                r=randperm(size(deconvnon_trial_bin10fr{l}{d}{i},1));
                for n=r
                    dnc_ms_bin10fr_tmp=cat(2,dnc_ms_bin10fr_tmp,deconvnon_trial_bin10fr_ms{l}{d}{i}(n,:));
                end
            end
        end
        dnc_ms_bin10fr=cat(1,dnc_ms_bin10fr,dnc_ms_bin10fr_tmp);
    end
    
    drc_ms_bin10fr=[];
    for i=1:size(deconvredpass,1)
        drc_ms_bin10fr_tmp=[];
        for d=1:2
            for l=1:8
                r=randperm(size(deconvred_trial{l}{d}{i},1));
                for n=r
                    drc_ms_bin10fr_tmp=cat(2,drc_ms_bin10fr_tmp,deconvred_trial_bin10fr_ms{l}{d}{i}(n,:));
                end
            end
        end
        drc_ms_bin10fr=cat(1,drc_ms_bin10fr,drc_ms_bin10fr_tmp);
    end
    
    
    
    nn_bin10fr_tmp=[];
    distnn=[];
    
    for x=1:size(dnc_ms_bin10fr,1)
        for y=1:size(dnc_ms_bin10fr,1)
            if x<y
                nn_bin10fr_tmp=cat(2,nn_bin10fr_tmp,corr(dnc_ms_bin10fr(x,:)',dnc_ms_bin10fr(y,:)','rows','complete'));
            end
        end
    end
    
    rr_bin10fr_tmp=[];
    distrr=[];
    for x=1:size(drc_ms_bin10fr,1)
        for y=1:size(drc_ms_bin10fr,1)
            if x<y
                rr_bin10fr_tmp=cat(2,rr_bin10fr_tmp,corr(drc_ms_bin10fr(x,:)',drc_ms_bin10fr(y,:)','rows','complete'));
                
            end
        end
    end
    
    rn_bin10fr_tmp=[];
    distrn=[];
    
    for x=1:size(drc_ms_bin10fr,1)
        for y=1:size(dnc_ms_bin10fr,1)
            rn_bin10fr_tmp=cat(2,rn_bin10fr_tmp,corr(drc_ms_bin10fr(x,:)',dnc_ms_bin10fr(y,:)','rows','complete'));
        end
    end
    
    
    nn_bin10fr_shuf=cat(1,nn_bin10fr_shuf,nn_bin10fr_tmp);
    rn_bin10fr_shuf=cat(1,rn_bin10fr_shuf,rn_bin10fr_tmp);
    rr_bin10fr_shuf=cat(1,rr_bin10fr_shuf,rr_bin10fr_tmp);
end


save([base '\noise_correlations_shuffle\' mouse ' ' date ' ' area '.mat'],'nn_bin10fr','rn_bin10fr','rr_bin10fr','distnn','distrn','distrr','n1','n2','n3','n4','rn1','rn2','rn3','rn4','rr1','rr2','rr3','rr4');

                
        

