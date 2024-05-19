library('simsurv')

N<-1000

grid <- c(0.7,0.4,0.3,0.21,0.16,0.12,0.09,0.068,0.057,0.042,
          0.03,0.0225,0.016,0.012,0.009 )

for (pc in grid){
  cov <- data.frame(id = 1:N, X1 = rnorm(N,0,1), X2 = rnorm(N,0,1),
                    X3 = rnorm(N,0,1),X4 = rnorm(N,0,1), X5 = rnorm(N,0,1),
                    X6 = rnorm(N,0,1), X7 = rnorm(N,0,1), X8 = rnorm(N,0,1),
                    X9 = rnorm(N,0,1), X10 = rnorm(N,0,1), X11 = rnorm(N,0,1),
                    X12 = rnorm(N,0,1))
  for (i in 1:100){
    simdata <- simsurv(lambdas= pc,gammas =1.5,
                       betas = c(X1=-0.5,X2=-0.5,X3=-0.5,X4=-0.5,X5=-0.5,
                                 X6=-0.5,X7=-0.5,X8=-0.5,X9=-0.5,X10=-0.5,
                                 X11=-0.5,X12=-0.5),
                       x= cov, maxt=5)
    simdata<-merge(cov,simdata)
    write.csv(simdata,paste0("percensdata_", pc,"_", i,".csv"))
  }
} 
