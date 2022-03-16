# KhouryFalaRunyan2022
Original code used for "The spatial scale of somatostatin subnetworks increases from sensory to association cortex"

noisecorrpassive.m was used to generate noise correlations based on mean subtracted sound responses, used throughout Figure 2A-E

noisecorrpassive_shuffle.m was used to compare observed to a distribution of noise correlations where trial ID had been shuffled
within sound location conditions for each neuron 1000x. Shown in Figure 2D

get_all_cell_pairwise_sounds.m was used to sort all of the noise correlations by area, cell-type, and bin them based on pairwise
distances to prepare for plotting in Figure 2D.

get_all_cell_pairwise_sounds_shuf.m does the same as get_all_cell_pairwise_sounds, but for the shuffled data.

plot_all_pairwise_sound_nc_cdf generates plots from 2D using organization generated by get_all_cell_pairwise_sounds.m 
and get_all_cell_pairwise_sounds_shuf.m 

cdfplot_CFK.m is a custom plotting function adapted from matlab's cdfplot function.

expfits_distbins_sounds.m fits a lambda for each dataset that describes the rate of decay of noise correlations over distance.
