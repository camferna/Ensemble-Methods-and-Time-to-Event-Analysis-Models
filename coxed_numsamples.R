#This script is to generate the datasets for the experiment
#where we vary the number of samples

library(coxed)


num_sample <- seq(100,10000, by = 400)
length(num_sample)

for (ns in num_sample){
  simdata <- sim.survdata(N=ns, T=500, xvars = 12, censor=.5, num.data.frames=100)
  for (i in 1:100){
    savedata <- data.frame(simdata[[i]]$data)
    write.csv(savedata,paste0("~/Dropbox/Mac/Documents/Workspace/Simulations ensemble/number of samples/numsampledata_", ns,"_", i,".csv"))
  }
}
