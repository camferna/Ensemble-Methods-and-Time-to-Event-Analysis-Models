library('simsurv')
#library('survival')
#library('flexsurv')

#check the grid because it is better up to 1000 I think.
#num_sample <- seq(100,10000, by = 400)
#length(num_sample)

num_sample <- seq(50,2000, by = 130)
length(num_sample)

#num_sample <- seq(20,500, by = 34)
#length(num_sample)


for (N in num_sample){
  cov <- data.frame(id = 1:N, X1 = rnorm(N,0,1), X2 = rnorm(N,0,1),
                    X3 = rnorm(N,0,1),X4 = rnorm(N,0,1), X5 = rnorm(N,0,1),
                    X6 = rnorm(N,0,1), X7 = rnorm(N,0,1), X8 = rnorm(N,0,1),
                    X9 = rnorm(N,0,1), X10 = rnorm(N,0,1), X11 = rnorm(N,0,1),
                    X12 = rnorm(N,0,1))
  for (i in 1:100){
    simdata <- simsurv(lambdas= 0.05,gammas =1.5,
                       betas = c(X1=-0.5,X2=-0.5,X3=-0.5,X4=-0.5,X5=-0.5,
                                 X6=-0.5,X7=-0.5,X8=-0.5,X9=-0.5,X10=-0.5,
                                 X11=-0.5,X12=-0.5),
                       x= cov, maxt=5)
    simdata<-merge(cov,simdata)
    #Create a new path in windows 
    write.csv(simdata,paste0("C:/Users/camferna/Documents/Workspace/Simulations_Ensemble/simsurv_numsamples/numsampledata_", N,"_", i,".csv"))
    #write.csv(simdata,paste0("~/Dropbox/Mac/Documents/Workspace/Simulations ensemble/number of samples/numsampledata_", N,"_", i,".csv"))
  }
} 
