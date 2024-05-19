#This script is to generate the datasets for the experiment
#where we vary the number of features


library(coxed)


num_feature <- 1:20
length(num_feature)


for (nf in num_feature){
  simdata <- sim.survdata(N=1000, T=500, xvars = nf, censor=.5, num.data.frames=100)
  for (i in 1:100){
    savedata <- data.frame(simdata[[i]]$data)
    write.csv(savedata,paste0("numfeatdata_", nf,"_", i,".csv"))

  }
}
