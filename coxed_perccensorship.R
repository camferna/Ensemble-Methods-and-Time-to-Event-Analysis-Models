#This script is to generate the datasets for the experiment
#where we vary the number of samples

library(coxed)


perc_cens <- seq(0.1,0.8, by = 0.05)
length(perc_cens)
perc_cens

for (pc in perc_cens){
  simdata <- sim.survdata(N = 1000, T=500, xvars = 12, censor = pc, num.data.frames=100)
  for (i in 1:100){
    savedata <- data.frame(simdata[[i]]$data)
    write.csv(savedata,paste0("percensdata_", pc,"_", i,".csv"))
  }
}
