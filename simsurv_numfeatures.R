library('simsurv')
#library('survival')
#library('flexsurv')


N <- 1000




for (i in 1:100){
  cov <- data.frame(id = 1:N, X1 = rnorm(N,0,1), X2 = rnorm(N,0,1),
                    X3 = rnorm(N,0,1),X4 = rnorm(N,0,1), X5 = rnorm(N,0,1),
                    X6 = rnorm(N,0,1), X7 = rnorm(N,0,1), X8 = rnorm(N,0,1),
                    X9 = rnorm(N,0,1), X10 = rnorm(N,0,1), X11 = rnorm(N,0,1),
                    X12 = rnorm(N,0,1),X13 = rnorm(N,0,1),X14 = rnorm(N,0,1),
                    X15 = rnorm(N,0,1),X16 = rnorm(N,0,1),X17 = rnorm(N,0,1),
                    X18 = rnorm(N,0,1),X19 = rnorm(N,0,1),X20 = rnorm(N,0,1))
  
  simdata <- simsurv(lambdas= 0.0002,gammas =5,
                     betas = c(X1=-0.5,X2=-0.5,X3=-0.5,X4=-0.5,X5=-0.5,
                               X6=-0.5,X7=-0.5,X8=-0.5,X9=-0.5,X10=-0.5,
                               X11=-0.5,X12=-0.5,X13=-0.5,X14=-0.5,X15=-0.5,
                               X16=-0.5,X17=-0.5,X18=-0.5,X19=-0.5,X20=-0.5),
                     x= cov, maxt=5)
  simdata<-merge(cov,simdata)
  #Create a new path in windows 
  write.csv(simdata,paste0("C:/Users/camferna/Documents/Workspace/Simulations_Ensemble/simsurv_simv2/number_of_features_v2/numfeatdata_20_", i,".csv"))
  #write.csv(simdata,paste0("~/Dropbox/Mac/Documents/Workspace/Simulations ensemble/number of samples/numsampledata_", N,"_", i,".csv"))
  }



 