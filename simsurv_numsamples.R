library('simsurv')

num_sample <- seq(50,2000, by = 130)


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
    write.csv(simdata,paste0("numsampledata_", N,"_", i,".csv"))
  }
} 
